# Guide 2 — Get Sepolia ETH from a Faucet

Sepolia ETH is **test ETH** — it has no real monetary value but is required to pay for gas fees when deploying contracts on the Sepolia testnet. Faucets are services that send you free test ETH.

---

## Before You Start

Make sure you have:
- MetaMask installed and set to **Sepolia testnet** (see Guide 1)
- Your wallet address copied (starts with `0x`)

---

## Option 1: Alchemy Sepolia Faucet (Recommended)

This is the most reliable faucet and gives 0.5 ETH per request.

1. Go to: https://www.alchemy.com/faucets/ethereum-sepolia
2. Sign in with a **Google account** or create a free Alchemy account
3. Paste your wallet address into the input field
4. Click **"Send Me ETH"**
5. Wait 1–2 minutes, then check MetaMask — your balance should update

> Requires a free Alchemy account. No mainnet ETH needed.

---

## Option 2: Google Cloud Web3 Faucet

1. Go to: https://cloud.google.com/application/web3/faucet/ethereum/sepolia
2. Sign in with your Google account
3. Paste your wallet address
4. Complete any verification if prompted
5. Click **"Send"**

> Gives 0.05 ETH per day. No extra accounts needed if you have a Google account.

---

## Option 3: Infura Sepolia Faucet

1. Go to: https://www.infura.io/faucet/sepolia
2. Create a free Infura account or sign in
3. Paste your wallet address
4. Click **"Receive ETH"**

> Gives 0.5 ETH per day.

---

## Option 4: Chainlink Faucet

1. Go to: https://faucets.chain.link/sepolia
2. Connect your MetaMask wallet by clicking **"Connect wallet"**
3. Click **"Send request"**

> Gives 0.1 ETH. Requires MetaMask to be connected.

---

## Verifying Your Balance in MetaMask

1. Open MetaMask
2. Make sure you are on **Sepolia test network**
3. Your balance should show the ETH you received (may take 1–2 minutes to appear)

If the balance doesn't update after 5 minutes:
- Click the circular refresh icon inside MetaMask
- Check your address on the block explorer: https://sepolia.etherscan.io — paste your address in the search bar

---

## How Much ETH Do You Need?

For this workshop, **0.1 ETH** is more than enough. Deploying a simple contract costs roughly 0.001–0.01 ETH in gas fees on Sepolia.

---

## Why Can't I Use Real ETH?

We use a testnet so that:
- Mistakes don't cost real money
- You can experiment freely
- Everyone gets equal access to funds

Sepolia is Ethereum's official testnet — it behaves identically to mainnet for smart contract development.

---

## Troubleshooting

**Faucet says I already received funds recently:**
- Most faucets have a 24-hour cooldown per address
- Try a different faucet from the list above

**Transaction is pending for a long time:**
- Testnet can sometimes be slow — wait 5–10 minutes
- Check status at: https://sepolia.etherscan.io and search your address

**Balance shows 0 even after faucet says it sent:**
- Confirm MetaMask is on Sepolia (not Mainnet)
- The token symbol should be ETH but on the Sepolia network

---

Next: [Remix IDE Introduction](./03-remix-ide-intro.md)
