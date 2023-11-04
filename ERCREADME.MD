# Standard ERC20 Token

## Description

The `YunnoToken` contract is an Ethereum-based token implemented using the ERC20 standard. It includes basic functionalities such as minting, burning, and transferring tokens. This contract also inherits from OpenZeppelin's `Ownable` contract, allowing for ownership control.

## Features

- Minting new tokens (only accessible by the owner)
- Burning tokens (restricted to 10 tokens or less)
- Transferring tokens between addresses

## How to Use

- Use a wallet like MetaMask to interact with the deployed contract.
- Mint tokens using the `mint` function (only accessible by the owner).
- Burn tokens using the `burn` function (restricted to 10 tokens or less).
- Transfer tokens using the `transfer` function.
