# Guide 4 — Deploy a Contract to Sepolia

In this guide you will write your first smart contract, compile it, and deploy it to the Ethereum Sepolia testnet.

---

## Before You Start

Make sure you have:
- MetaMask installed and connected to **Sepolia testnet**
- At least **0.05 ETH** in your Sepolia wallet
- Remix IDE open at https://remix.ethereum.org

---

## Step 1: Create Your Contract File

1. In Remix, open the **File Explorer** tab
2. Click **"+"** to create a new file
3. Name it `HelloWorld.sol`
4. Paste the following code:

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HelloWorld {
    string public message;

    constructor(string memory _message) {
        message = _message;
    }

    function updateMessage(string memory _newMessage) public {
        message = _newMessage;
    }
}
```

---

## Step 2: Compile the Contract

1. Click the **Solidity Compiler** icon in the left sidebar
2. Set the **Compiler version** to `0.8.26` (or any 0.8.x version)
3. Click **"Compile HelloWorld.sol"**
4. You should see a **green checkmark** — this means no errors

If you see errors:
- Check that the pragma version matches the selected compiler version
- Read the error message — it usually tells you the exact line and issue

---

## Step 3: Connect MetaMask to Remix

1. Click the **Deploy & Run** icon (Ethereum diamond) in the left sidebar
2. In the **Environment** dropdown, select **"Injected Provider - MetaMask"**
3. A MetaMask popup will appear — click **"Connect"** and select your account
4. Confirm the connection

You should now see:
- Your Sepolia wallet address in the **Account** field
- Your Sepolia ETH balance next to it
- Chain ID: 11155111 (Sepolia)

---

## Step 4: Configure Deployment

In the Deploy tab:

| Field | Value |
|-------|-------|
| Environment | Injected Provider - MetaMask |
| Contract | HelloWorld |
| Value | 0 ETH |
| Gas Limit | (leave default) |

Since the `HelloWorld` constructor takes a `string` argument, you will see a text field next to the **Deploy** button.

1. Click the arrow next to **Deploy** to expand constructor arguments
2. In the `_message` field, type: `Hello, Sepolia!`

---

## Step 5: Deploy the Contract

1. Click the orange **"Deploy"** button
2. MetaMask will pop up showing the transaction details
3. Review the **gas fee** — this is what it costs to deploy
4. Click **"Confirm"** in MetaMask
5. Wait 15–30 seconds for the transaction to be mined

In the Remix terminal at the bottom you will see:
- A green checkmark
- A transaction hash (long string starting with `0x`)
- The deployed contract address

**Copy and save your contract address** — you will need it for verification.

---

## Step 6: Interact With Your Deployed Contract

In the **Deployed Contracts** section (scroll down in the Deploy tab):

1. Click the arrow next to your deployed `HelloWorld` contract to expand it
2. You will see two buttons:
   - **message** (blue) — click to read the current message
   - **updateMessage** (orange) — enter a new string and click to update it

**Reading the message:**
1. Click the blue **"message"** button
2. The current message appears below the button instantly (free, no gas)

**Updating the message:**
1. Click on **"updateMessage"**
2. Type a new string in the input field, e.g.: `Hello from [your name]!`
3. Click the orange **"updateMessage"** button
4. MetaMask will ask you to confirm — click **"Confirm"**
5. Wait for the transaction to confirm, then click **"message"** again to see the update

---

## Step 7: View on Etherscan

1. In the Remix terminal, find the transaction hash from your deployment
2. Click the link or copy the hash
3. Go to https://sepolia.etherscan.io
4. Paste the transaction hash or your contract address in the search bar
5. You can see your contract, its transactions, and its state

---

## Understanding Gas Fees

Gas is the cost of computation on Ethereum. Every operation costs gas:
- Simple reads (view functions): **free**
- Deploying a contract: **higher cost** (more computation)
- Calling a state-changing function: **medium cost**

On Sepolia, gas fees are paid with test ETH (no real money involved).

---

## Common Errors

**"Gas estimation failed":**
- This usually means your contract has a logic error or you're missing required arguments
- Check the function inputs

**MetaMask shows very high gas:**
- On testnet this is normal — testnet gas prices fluctuate
- Click "Confirm" anyway — it costs no real money

**"Transaction failed" after confirmation:**
- Check the transaction on Etherscan for the revert reason
- Usually a require() condition was not met

**Contract not appearing in Deployed Contracts:**
- Scroll down in the Deploy tab
- Check the terminal for errors

---

Next: [Verify Your Contract on Etherscan](./05-verify-on-etherscan.md)
