# Guide 1 — MetaMask Setup

MetaMask is a browser extension that acts as your Ethereum wallet. It lets you sign transactions and interact with the blockchain directly from your browser.

---

## Step 1: Install MetaMask

1. Open **Google Chrome** or **Firefox**
2. Go to the official MetaMask website: https://metamask.io/download/
3. Click **"Install MetaMask for Chrome"** (or Firefox)
4. You will be redirected to the Chrome Web Store — click **"Add to Chrome"**
5. In the popup, click **"Add Extension"**
6. Once installed, the MetaMask fox icon will appear in your browser toolbar

> **Security tip:** Only ever install MetaMask from the official website or browser extension store. Never install from third-party links.

---

## Step 2: Create a New Wallet

1. Click the MetaMask fox icon in your toolbar
2. Click **"Create a new wallet"**
3. Click **"I agree"** to the terms (optional analytics — click "No thanks" to decline)
4. Create a **strong password** — this protects your wallet on this device
5. Click **"Create a new wallet"**

---

## Step 3: Save Your Secret Recovery Phrase

This is the most important step.

1. Click **"Secure my wallet (recommended)"**
2. MetaMask will show you a **12-word Secret Recovery Phrase**
3. Write these words down **on paper, in order** — do NOT save them digitally or take screenshots
4. Store the paper somewhere safe
5. On the next screen, verify your phrase by selecting the words in the correct order
6. Click **"Confirm"**

> **Critical:** Anyone who has your recovery phrase has full control of your wallet. Never share it with anyone — not even us.

---

## Step 4: Add the Sepolia Testnet

By default, MetaMask shows Mainnet. We need to add the Sepolia testnet.

1. Click the **network dropdown** at the top of MetaMask (it likely says "Ethereum Mainnet")
2. Click **"Show test networks"** toggle if test networks are hidden
3. Select **"Sepolia"** from the list

If Sepolia is not listed:
1. Click **"Add a custom network"**
2. Fill in the following details:

| Field | Value |
|-------|-------|
| Network Name | Sepolia Testnet |
| New RPC URL | https://rpc.sepolia.org |
| Chain ID | 11155111 |
| Currency Symbol | ETH |
| Block Explorer URL | https://sepolia.etherscan.io |

3. Click **"Save"**
4. Click **"Switch to Sepolia Testnet"**

---

## Step 5: Copy Your Wallet Address

1. In MetaMask, click on **"Account 1"** (or your account name) at the top
2. Your address will be copied to clipboard — it looks like: `0xAbCd...1234`
3. Keep this handy — you'll need it when requesting faucet funds

---

## What Your Screen Should Look Like

After setup, MetaMask should show:
- Network: **Sepolia test network**
- Balance: **0 ETH** (we will fix this in the next guide)
- Your account address starting with `0x`

---

## Troubleshooting

**MetaMask not appearing after install:**
- Restart your browser
- Check that the extension is enabled in your browser's extensions page

**Forgot my password:**
- You can restore your wallet using your 12-word recovery phrase
- Click "Forgot password?" on the MetaMask login screen

---

Next: [Get Sepolia ETH from a Faucet](./02-get-sepolia-eth.md)
