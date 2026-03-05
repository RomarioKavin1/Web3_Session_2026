// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title SimpleCounter
 * @notice A counter that anyone can increment or decrement.
 *         Introduces events — a way for contracts to log activity on-chain.
 *
 * Concepts demonstrated:
 *  - Events and emit
 *  - require() for input validation
 *  - msg.sender (the address calling the function)
 *  - Preventing underflow with require()
 */
contract SimpleCounter {

    uint256 public count;
    address public owner;

    // Events are logs stored on the blockchain. They are cheap and
    // useful for frontends to listen for changes.
    event CountChanged(address indexed whoChanged, uint256 newCount);

    // The deployer of the contract becomes the owner.
    constructor() {
        owner = msg.sender; // msg.sender = address that deployed this contract
        count = 0;
    }

    // Increases the counter by 1.
    function increment() public {
        count += 1;
        // Emit the event so anyone watching can see what happened.
        emit CountChanged(msg.sender, count);
    }

    // Decreases the counter by 1.
    // require() stops execution and reverts if the condition is false.
    function decrement() public {
        require(count > 0, "Counter: cannot go below zero");
        count -= 1;
        emit CountChanged(msg.sender, count);
    }

    // Increases the counter by a custom amount.
    function incrementBy(uint256 _amount) public {
        require(_amount > 0, "Counter: amount must be greater than zero");
        count += _amount;
        emit CountChanged(msg.sender, count);
    }

    // Resets counter to zero. Only the owner can do this.
    function reset() public {
        require(msg.sender == owner, "Counter: only the owner can reset");
        count = 0;
        emit CountChanged(msg.sender, 0);
    }

    // Returns the current count. Same as reading the public variable,
    // but shown here explicitly to demonstrate view functions.
    function getCount() public view returns (uint256) {
        return count;
    }
}

/*
 * HOW TO DEPLOY:
 * 1. Compile and deploy — no constructor arguments needed
 * 2. Your address becomes the owner automatically
 *
 * THINGS TO TRY:
 * - Click increment() a few times, watch count go up
 * - Click decrement() — watch count go down
 * - Try decrement() when count is 0 — see the transaction revert!
 * - Try reset() from your address (owner) — it works
 * - Try incrementBy(10) — count jumps by 10
 *
 * ON ETHERSCAN:
 * - After verifying, look at the "Events" tab on your contract
 * - Every increment/decrement emits a CountChanged event you can see there
 */
