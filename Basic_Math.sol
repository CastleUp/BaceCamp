// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

// @title BasicMath
// @notice This contract provides functions to test for overflow detection in basic arithmetic operations.
// @author CastleUp
contract BasicMath {
    constructor() {}

    // @notice Adds two numbers and checks for overflow.
    // @param _a The first number.
    // @param _b The second number.
    // @return sum The sum of the two numbers.
    // @return error True if there is an overflow, otherwise false.
    function adder(uint256 _a, uint256 _b) public pure returns (uint256 sum, bool error) {
        unchecked {
            if (_a + _b >= _a) {
                sum = _a + _b;
                error = false;
            } else {
                sum = 0;
                error = true;
            }
        }
    }

    // @notice Subtracts the second number from the first and checks for underflow.
    // @param _a The first number.
    // @param _b The second number.
    // @return difference The difference of the two numbers.
    // @return error True if there is an underflow, otherwise false.
    function subtractor(uint256 _a, uint256 _b) public pure returns (uint256 difference, bool error) {
        unchecked {
            if (_a - _b <= _a) {
                difference = _a - _b;
                error = false;
            } else {
                difference = 0;
                error = true;
            }
        }
    }
}
