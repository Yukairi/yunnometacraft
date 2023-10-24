# MyToken Smart Contract

This repository contains a simple Solidity smart contract named `MyToken` for creating a basic token on the Ethereum blockchain.

## Table of Contents
- [Overview](#overview)
- [Getting Started](#getting-started)
  - [Prerequisites](#prerequisites)
  - [Deployment](#deployment)
- [Usage](#usage)
  - [Interacting with the Contract](#interacting-with-the-contract)
    - [Minting Tokens](#minting-tokens)
    - [Burning Tokens](#burning-tokens)
## Overview

The `MyToken` contract provides basic functionalities for creating and managing tokens on the Ethereum blockchain. It includes the following features:

- Name: The name of the token.
- Symbol: The symbol used to represent the token.
- Total Supply: The total supply of tokens initially available.
- Balances: A mapping of addresses to their respective token balances.

## Getting Started

### Prerequisites

Ensure you have the following installed:

- [Solidity Compiler](https://soliditylang.org/docs/getting-started.html)

### Deployment

To deploy this contract, you can use a Solidity-compatible development environment, such as Remix or Truffle. Make sure to specify the `_name`, `_symbol`, and `_totalSupply` parameters when deploying.

## Usage

### Interacting with the Contract

After deployment, you can interact with the contract using Ethereum wallets or other smart contracts.

#### Minting Tokens

Mint new tokens and assign them to a specified address.
