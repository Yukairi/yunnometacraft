Smart Contracts
Overview
This repository contains a Solidity smart contract named Assessment that facilitates basic account management functionalities. The contract allows the owner to deposit and withdraw funds while emitting events for transparency. Additionally, it includes examples of using assert and revert for error handling.

Contract Details
SPDX-License-Identifier
UNLICENSED

Solidity Version
^0.8.9

Contract Functions
constructor(uint initBalance) payable
Initializes the contract with an initial balance specified by initBalance.
The deployer of the contract becomes the owner.
getBalance() public view returns(uint256)
Returns the current balance of the contract.
deposit(uint256 _amount) public payable
Allows the owner to deposit funds into the contract.
Emits a Deposit event upon successful deposit.
withdraw(uint256 _withdrawAmount) public
Allows the owner to withdraw funds from the contract.
Emits a Withdraw event upon successful withdrawal.
Throws a custom error (InsufficientBalance) if the withdrawal amount exceeds the current balance.
assertExample(uint x) public pure returns (uint)
An example function showcasing the use of assert() to check for conditions that should never be false.
Returns the result of a mathematical operation after the assertion check.
revertExample(uint256 _value) external pure returns(bool)
An example function showcasing the use of revert() to handle specific conditions.
If _value is equal to 10, the transaction will be reverted with a custom error message.
Events
Deposit(uint256 amount)
Emitted when a deposit is made, indicating the deposited amount.
Withdraw(uint256 amount)
Emitted when a withdrawal is executed, indicating the withdrawn amount.
Custom Error
InsufficientBalance(uint256 balance, uint256 withdrawAmount)
Custom error thrown when attempting to withdraw an amount greater than the current balance.
Owner
The owner variable represents the address of the account that deployed the contract.
Usage
Deploy the contract, specifying the initial balance.
Interact with the contract using the provided functions.
Disclaimer
This smart contract is provided as-is and is not audited. Use it at your own risk.

Note: Uncommenting import "hardhat/console.sol"; will enable console logging during development. Remember to remove or comment it out in a production environment.
