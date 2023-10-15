// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract RequireAssertRevertExample {
    address public owner;
    uint public value;

    constructor() {
        owner = msg.sender;
    }

    function setValue(uint _newValue) public {
        // Use require() to validate conditions.
        require(msg.sender == owner, "Only owner can set the value.");
        require(_newValue > 0, "Value must be greater than zero.");

        // Set the new value.
        value = _newValue;
    }

    function assertExample(uint x) public pure returns (uint) {
        // Use assert() to check for conditions that should never be false.
        //cannot be equal to 10 or it will cause an error
        assert(x != 10);

        // Perform some operations.
        return 1000 / x;
    }

    function revertExample(uint256 _value) external pure returns(bool) {
       //if _value is not equal to 10, the function will return true. If _value is equal to 10, the transaction will be reverted.
        if (_value == 10)    {
            revert("Value must  1");
        }
        return true;
    }
}
