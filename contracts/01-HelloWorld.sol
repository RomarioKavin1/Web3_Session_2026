// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title HelloWorld
 * @notice The simplest possible smart contract. Stores a message on-chain
 *         and lets anyone update it.
 *
 * Concepts demonstrated:
 *  - State variables
 *  - Constructor (runs once at deployment)
 *  - Public view functions (free to call, no gas)
 *  - Public state-changing functions (costs gas)
 */
contract HelloWorld {

    // This variable is stored permanently on the blockchain.
    // 'public' means Solidity automatically creates a getter function for it.
    string public message;

    // The constructor runs ONCE when the contract is deployed.
    // Whatever you pass as _message becomes the initial value.
    constructor(string memory _message) {
        message = _message;
    }

    // Anyone can call this to update the stored message.
    // This WRITES to the blockchain, so it costs gas and requires a transaction.
    function updateMessage(string memory _newMessage) public {
        message = _newMessage;
    }
}

/*
 * HOW TO DEPLOY:
 * 1. In Remix, compile this file with compiler version 0.8.x
 * 2. Go to Deploy tab, select "Injected Provider - MetaMask"
 * 3. Expand the Deploy button and enter your initial message, e.g.: Hello, Sepolia!
 * 4. Click Deploy and confirm in MetaMask
 *
 * HOW TO INTERACT:
 * - Click the blue "message" button to read the current message (free)
 * - Enter a new string in "updateMessage" and click it to update (costs gas)
 */
