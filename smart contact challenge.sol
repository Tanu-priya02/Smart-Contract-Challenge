// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.0;

contract MathOperations {
    
    function add(uint _a, uint _b) public pure returns (uint) {
        return _a + _b;
    }

    function subtract(uint _a, uint _b) public pure returns (uint) {
        return _a - _b;
    }

    function multiply(uint _a, uint _b) public pure returns (uint) {
        return _a * _b;
    }

    function divide(uint _a, uint _b) public pure returns (uint) {
        require(_b != 0, "Division by zero is not allowed");
        return _a / _b;
    }
}
