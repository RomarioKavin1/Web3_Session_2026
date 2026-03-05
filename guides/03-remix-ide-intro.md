# Guide 3 — Remix IDE Introduction

Remix IDE is a browser-based development environment for writing, compiling, and deploying Solidity smart contracts. No installation required — it runs entirely in your browser.

---

## Opening Remix

Go to: **https://remix.ethereum.org**

You will see the Remix IDE load in your browser. It may show a default workspace with some example files — that's fine.

---

## The Remix Interface

Remix has four main areas:

```
+------------------+------------------------------------------+
|                  |                                          |
|   LEFT SIDEBAR   |           MAIN EDITOR AREA              |
|   (Icon panel)   |   (Where you write your .sol files)      |
|                  |                                          |
+------------------+------------------------------------------+
|                                                             |
|              TERMINAL / OUTPUT PANEL (bottom)               |
|                                                             |
+-------------------------------------------------------------+
```

### Left Sidebar Icons (top to bottom)

| Icon | Name | What It Does |
|------|------|--------------|
| File icon | File Explorer | Browse and manage your .sol files |
| Search icon | Search | Search across files |
| Solidity logo | Solidity Compiler | Compile your contracts |
| Ethereum logo | Deploy & Run | Deploy contracts and interact with them |
| Plugin icon | Plugin Manager | Add extra tools |

---

## Step 1: Create a New File

1. Click the **File Explorer** icon (top of the left sidebar)
2. Click the **"+"** (new file) button next to the workspace name
3. Name your file something like `HelloWorld.sol`
4. The file will open in the main editor

---

## Step 2: The Solidity Compiler Tab

Click the **Solidity Compiler** icon (looks like the Solidity "S" logo).

Key settings:

- **Compiler version:** Choose the version that matches your contract's `pragma` statement. For this workshop use `0.8.x` (e.g., `0.8.26`)
- **Language:** Solidity
- **EVM Version:** Leave as default (cancun or paris)
- **Auto compile:** You can turn this on so it compiles as you type

To compile:
- Click the blue **"Compile YourFileName.sol"** button
- Green checkmark = success
- Red X = errors — read the error message in the panel below

---

## Step 3: The Deploy & Run Tab

Click the **Deploy & Run** icon (looks like the Ethereum diamond).

Key settings:

| Setting | What to Choose |
|---------|---------------|
| Environment | **Injected Provider - MetaMask** (to use real Sepolia) |
| Account | Your MetaMask wallet address (auto-populated) |
| Gas Limit | Leave as default |
| Value | Leave as 0 (unless sending ETH with deployment) |
| Contract | Select the contract you want to deploy |

> When you select **"Injected Provider - MetaMask"**, a MetaMask popup will appear asking you to connect — click **"Connect"**.

---

## Step 4: Interacting With Deployed Contracts

After deployment, your contract appears in the **"Deployed Contracts"** section at the bottom of the Deploy tab.

- **Blue buttons** = view/read functions (free, no gas, instant)
- **Orange buttons** = write/state-changing functions (costs gas, MetaMask will prompt)
- **Red buttons** = payable functions (send ETH along with the call)

Click any button to call that function. Results appear in the terminal below.

---

## Key Remix Shortcuts

| Shortcut | Action |
|----------|--------|
| Ctrl + S | Save file |
| Ctrl + Z | Undo |
| Ctrl + F | Find in file |
| F1 | Command palette |

---

## The Terminal Panel

The terminal at the bottom shows:
- Compilation results
- Transaction hashes after deployment
- Function call results
- Error messages

After a successful deployment you will see a green checkmark and a transaction hash. You can click the hash to view it on Sepolia Etherscan.

---

## Tips for Beginners

- Always **save your file** (Ctrl+S) before compiling
- Match the pragma version in your file with the selected compiler version
- If you see a red squiggle under code, hover over it to read the error
- The terminal gives you detailed error messages — read them carefully
- You can have multiple files open as tabs in the editor

---

## Remix Storage

Remix stores your files in your browser's local storage by default. This means:
- Files persist between sessions on the same browser
- Clearing browser cache will delete your files
- Use **File > Export** to download your files as a backup

---

Next: [Deploy a Contract to Sepolia](./04-deploy-contract.md)
