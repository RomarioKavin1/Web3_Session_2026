# Smart Contracts on Ethereum Sepolia — Beginner Workshop

Welcome! This repo is your complete reference guide for deploying and verifying smart contracts on the **Ethereum Sepolia testnet** using **Remix IDE** and **MetaMask** — no local setup required.

---

## What You Will Learn

- Set up MetaMask and connect to Sepolia testnet
- Get free Sepolia ETH from a faucet
- Write, compile, and deploy smart contracts using Remix IDE
- Verify your deployed contract on Etherscan

---

## Step-by-Step Guides

Follow these in order:

| Step | Guide | Description |
|------|-------|-------------|
| 1 | [MetaMask Setup](./guides/01-metamask-setup.md) | Install MetaMask and create a wallet |
| 2 | [Get Sepolia ETH](./guides/02-get-sepolia-eth.md) | Fund your wallet using a faucet |
| 3 | [Remix IDE Intro](./guides/03-remix-ide-intro.md) | Tour of the Remix IDE interface |
| 4 | [Deploy a Contract](./guides/04-deploy-contract.md) | Compile and deploy to Sepolia |
| 5 | [Verify on Etherscan](./guides/05-verify-on-etherscan.md) | Verify source code with Etherscan API |

---

## Example Contracts

Start simple and work your way up:

| Contract | File | What It Teaches |
|----------|------|-----------------|
| Hello World | [HelloWorld.sol](./contracts/01-HelloWorld.sol) | State variables, constructor, view functions |
| Simple Storage | [SimpleStorage.sol](./contracts/02-SimpleStorage.sol) | Reading and writing state |
| Counter | [SimpleCounter.sol](./contracts/03-SimpleCounter.sol) | Functions that modify state, events |
| Simple Token | [SimpleToken.sol](./contracts/04-SimpleToken.sol) | Mappings, transfers, basic token logic |

---

## Prerequisites (Quick Checklist)

- [ ] Google Chrome or Firefox browser
- [ ] MetaMask extension installed
- [ ] Sepolia ETH in your wallet (at least 0.1 ETH)
- [ ] Free Etherscan account + API key (for verification)

---

## Quick Reference

- **Network:** Ethereum Sepolia Testnet
- **Chain ID:** 11155111
- **Block Explorer:** https://sepolia.etherscan.io
- **Remix IDE:** https://remix.ethereum.org
- **Solidity Docs:** https://docs.soliditylang.org

---

> These contracts are for educational purposes only. Never use them in production without a proper security audit.
