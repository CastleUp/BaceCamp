// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.17;

// @title ControlStructures
// @author NelsonRodMar
contract ControlStructures {
    constructor() {}

    error AfterHours(uint256 _time);

    // @notice This function a different string depending on the number
    // @param _number The number
    // @return result The string result
    function fizzBuzz(uint256 _number) public pure returns (string memory result) {
        if (_number % 3 == 0 && _number % 5 == 0) {
            result = "FizzBuzz";
        } else if (_number % 3 == 0) {
            result = "Fizz";
        } else if (_number % 5 == 0) {
            result = "Buzz";
        } else {
            result = "Splat";
        }
    }
