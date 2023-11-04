# Degen Token Contract

This is a Solidity smart contract for a token called "Degen" (with symbol "DGN") that implements functionalities like minting, burning, transferring, a gacha system, and an inventory system.

## Functionality

### Minting

The `mint` function allows the owner of the contract to mint new tokens and distribute them to specified addresses.

### Burning

The `burn` function allows users to burn (destroy) a certain amount of their own tokens.

### Transferring

The `transfer` function allows users to transfer their tokens to other addresses.

### Gacha System

The contract includes a gacha system where users can spend a certain amount of tokens to roll for a character. The chances of obtaining each character are defined by percentages.

- Yaemiko: 70%
- Qiqi: 30%
- Venti: 2.5%

### Inventory System

The contract keeps track of the inventory of characters obtained through the gacha system. Users can view the quantities of Yaemiko, Qiqi, and Venti characters they own.
