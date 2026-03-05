// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @title SimpleToken
 * @notice A minimal token contract. Creates a fixed supply of tokens and
 *         lets users transfer them to each other. NOT a full ERC-20 —
 *         intentionally stripped down for learning purposes.
 *
 * Concepts demonstrated:
 *  - mapping (key => value) data structure
 *  - Token balances per address
 *  - Transfer logic with balance checks
 *  - Events for on-chain activity logs
 *  - msg.sender in the context of transfers
 */
contract SimpleToken {

    // Token metadata
    string public name;
    string public symbol;
    uint256 public totalSupply;

    // A mapping is like a dictionary / hash map.
    // It maps every Ethereum address to a uint256 balance.
    // Addresses not in the map automatically return 0.
    mapping(address => uint256) public balanceOf;

    // Emitted whenever tokens move from one address to another.
    event Transfer(address indexed from, address indexed to, uint256 amount);

    /**
     * @param _name    Human-readable name, e.g. "MyToken"
     * @param _symbol  Ticker symbol, e.g. "MTK"
     * @param _supply  Total number of tokens to create (no decimals here)
     */
    constructor(string memory _name, string memory _symbol, uint256 _supply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _supply;

        // Give ALL tokens to the deployer at the start.
        balanceOf[msg.sender] = _supply;

        // Emit a Transfer event from address(0) — this is the convention
        // for signaling that new tokens were minted (created from nothing).
        emit Transfer(address(0), msg.sender, _supply);
    }

    /**
     * @notice Send tokens to another address.
     * @param _to     The recipient's address
     * @param _amount How many tokens to send
     */
    function transfer(address _to, uint256 _amount) public {
        // Make sure the sender actually has enough tokens.
        require(balanceOf[msg.sender] >= _amount, "Token: insufficient balance");

        // Make sure we're not sending to the zero address (would burn tokens).
        require(_to != address(0), "Token: cannot transfer to zero address");

        // Deduct from sender, add to recipient.
        balanceOf[msg.sender] -= _amount;
        balanceOf[_to] += _amount;

        emit Transfer(msg.sender, _to, _amount);
    }

    /**
     * @notice Check how many tokens an address holds.
     *         Same as reading balanceOf[_address] directly.
     */
    function getBalance(address _address) public view returns (uint256) {
        return balanceOf[_address];
    }
}

/*
 * HOW TO DEPLOY:
 * Expand the Deploy button and fill in constructor arguments:
 *   _name:   "WorkshopToken"
 *   _symbol: "WTK"
 *   _supply: 1000000
 *
 * THINGS TO TRY:
 * 1. Call balanceOf with your address — you should have 1,000,000 tokens
 * 2. Copy a classmate's address (or any Sepolia address)
 * 3. Call transfer(_to = that address, _amount = 100)
 * 4. Call balanceOf on both addresses to see the balances updated
 * 5. Try transferring more than you have — watch it revert!
 *
 * DISCUSSION POINTS:
 * - Why can't people fake their balances?
 *   Because only the contract can write to balanceOf, and it enforces the rules.
 * - What stops someone from calling transfer with someone else's address as sender?
 *   msg.sender is set by the Ethereum protocol — you cannot fake it.
 * - This is the core idea behind all ERC-20 tokens (USDC, LINK, etc.)
 */
