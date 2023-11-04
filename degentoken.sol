// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts@4.9.0/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts@4.9.0/access/Ownable.sol";

contract DegenToken is ERC20, Ownable {

    enum Character {Yaemiko, Qiqi, Venti}

    uint256 constant private GACHA_COST = 200; 

    uint256 constant private YAEMIKO_CHANCE = 700; 
    uint256 constant private QIQI_CHANCE = 300;   
    uint256 constant private VENTI_CHANCE = 25;   
    mapping(Character => uint256) public inventory;
    constructor() ERC20("Degen", "DGN") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function burn(uint256 amount) public {
        _burn(msg.sender, amount);
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        _transfer(msg.sender, to, amount);
        return true;
    }

    function gacha() public {
        require(balanceOf(msg.sender) >= GACHA_COST, "Insufficient balance for gacha");

        _burn(msg.sender, GACHA_COST);

        uint256 randomNumber = uint256(keccak256(abi.encodePacked(block.timestamp, block.difficulty, msg.sender))) % 1000;

        Character result;

        if (randomNumber < YAEMIKO_CHANCE) {
            result = Character.Yaemiko;
        } else if (randomNumber < YAEMIKO_CHANCE + QIQI_CHANCE) {
            result = Character.Qiqi;
        } else if (randomNumber < YAEMIKO_CHANCE + QIQI_CHANCE + VENTI_CHANCE) {
            result = Character.Venti;
        } else {
            revert("Invalid random number generated");
        }
            inventory[result]++;
    }
        function getInventory() public view returns (uint256, uint256, uint256) {
        return (inventory[Character.Yaemiko], inventory[Character.Qiqi], inventory[Character.Venti]);
    }
}
