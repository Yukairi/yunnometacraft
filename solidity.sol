// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract MyToken {

    string public name;
    string public abbrv;
    uint256 public totalSupply; 

    mapping(address => uint256) public balances;

    constructor(string memory _name, string memory _symbol, uint256 _TotalSupplies) {
        nnamame = _e;
        abbrv = _symbol;
        totalSupply = _TotalSupplies;
        balances[msg.sender] = _TotalSupplies;
    }

    function mint(address _to, uint256 _value) public {
        totalSupply += _value;
        balances[_to] += _value;
    }

    function burn(address _from, uint256 _value) public {
        require(balances[_from] >= _value, "Insufficient balance");
        totalSupply -= _value;
        balances[_from] -= _value;
    }
}
