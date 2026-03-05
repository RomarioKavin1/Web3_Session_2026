// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title SimpleStorage
 * @notice Stores a single number on-chain. Demonstrates reading and writing
 *         state variables, and how view functions differ from regular functions.
 *
 * Concepts demonstrated:
 *  - uint256 (unsigned integer) state variable
 *  - Setter function (changes state, costs gas)
 *  - Getter function (reads state, free)
 *  - The 'view' keyword
 */
contract SimpleStorage {

    // uint256 = unsigned integer (no negatives), 256 bits wide.
    // Stored permanently on the blockchain.
    uint256 public storedNumber;

    // 'view' means this function only READS state, never changes it.
    // Calling a view function is completely free — no transaction needed.
    function getNumber() public view returns (uint256) {
        return storedNumber;
    }

    // No 'view' keyword = this function WRITES to the blockchain.
    // Calling it creates a transaction and costs gas.
    function setNumber(uint256 _number) public {
        storedNumber = _number;
    }

    // Adds a number to the currently stored value and saves the result.
    function addToNumber(uint256 _amount) public {
        storedNumber = storedNumber + _amount;
        // Same as: storedNumber += _amount;
    }

    // Resets the stored number back to zero.
    function resetNumber() public {
        storedNumber = 0;
    }
}

/*
 * HOW TO DEPLOY:
 * 1. Compile with any 0.8.x compiler version
 * 2. No constructor arguments needed — deploy directly
 * 3. storedNumber starts at 0 by default
 *
 * THINGS TO TRY:
 * - Call getNumber() — returns 0 initially
 * - Call setNumber(42) — sets the stored value to 42
 * - Call getNumber() again — now returns 42
 * - Call addToNumber(8) — stored value becomes 50
 * - Call resetNumber() — back to 0
 *
 * NOTICE: Blue buttons (view functions) are instant and free.
 *         Orange buttons create a transaction and cost gas.
 */
