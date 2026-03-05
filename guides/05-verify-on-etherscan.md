# Guide 5 — Verify Your Contract on Etherscan

Verifying your contract publishes its source code to Etherscan so anyone can read it, audit it, and interact with it through the Etherscan UI. Verified contracts have a green checkmark on Etherscan.

---

## Why Verify?

- Proves transparency — anyone can see exactly what your contract does
- Enables interaction directly through Etherscan's UI (without Remix)
- Required for most real-world contracts and DeFi protocols
- Builds trust with users

---

## Part 1: Get an Etherscan API Key

### Step 1: Create a Free Etherscan Account

1. Go to https://etherscan.io
2. Click **"Sign In"** in the top right
3. Click **"Click to sign up"**
4. Fill in username, email, and password
5. Verify your email address

### Step 2: Generate an API Key

1. After logging in, click your username in the top right
2. Select **"API Keys"** from the dropdown menu
3. Click **"Add"** (or the **"+"** button)
4. Give your key a name (e.g., `workshop`)
5. Click **"Create New API Key"**
6. Your API key will appear in the list — it looks like: `ABCDEF1234567890ABCDEF1234567890AB`

**Copy this key and keep it somewhere safe for the session.**

> The free Etherscan plan gives you 5 API calls/second and 100,000 calls/day — more than enough for this workshop.

---

## Part 2: Verify Using Remix (Easiest Method)

Remix has a built-in Etherscan verification plugin.

### Step 1: Install the Etherscan Plugin

1. In Remix, click the **Plugin Manager** icon (puzzle piece icon at the bottom of the left sidebar)
2. In the search box, type `etherscan`
3. Find **"Etherscan - Contract Verification"**
4. Click **"Activate"**
5. A new icon will appear in your left sidebar

### Step 2: Configure the Plugin

1. Click the new Etherscan plugin icon
2. In the **"Etherscan API Key"** field, paste your API key
3. Make sure the network is set to **Sepolia**

### Step 3: Verify Your Contract

1. In the plugin, select the contract you deployed (e.g., `HelloWorld`)
2. Enter your **contract address** (from Guide 4)
3. Click **"Verify"**
4. Wait 10–30 seconds
5. If successful, you will see a green "Contract verified!" message with a link

---

## Part 3: Verify Manually via Etherscan (Alternative Method)

If the plugin doesn't work, you can verify directly on the Etherscan website.

### Step 1: Go to Your Contract on Etherscan

1. Go to https://sepolia.etherscan.io
2. Paste your **contract address** in the search bar
3. Press Enter

### Step 2: Start Verification

1. Click the **"Contract"** tab on your contract page
2. Click **"Verify and Publish"**

### Step 3: Fill in Contract Details

| Field | What to Enter |
|-------|--------------|
| Contract Address | (auto-filled) |
| Compiler Type | Solidity (Single file) |
| Compiler Version | Must match exactly what you used in Remix (e.g., `v0.8.26+commit.8a97fa7a`) |
| Open Source License | MIT |

Click **"Continue"**

### Step 4: Paste Your Source Code

1. In the **"Enter the Solidity Contract Code below"** box, paste your entire `.sol` file
2. If your constructor had arguments, expand the **"Constructor Arguments ABI-encoded"** section

**Finding constructor arguments:**
- In Remix, go to the terminal and find your deployment transaction
- The constructor arguments are the encoded data at the end of the input field
- Alternatively, on Etherscan, click your deployment transaction, scroll to "Input Data", and the constructor arguments are the last bytes

3. Leave **Optimization** set to **No** (unless you enabled it in Remix)
4. Click **"Verify and Publish"**

### Step 5: Confirm Verification

- If successful, you will see **"Pass - Verified"**
- Go back to your contract page on Etherscan
- The **Contract** tab now shows a green checkmark
- You can see the source code, ABI, and interact with functions directly

---

## Part 4: Interact With Your Verified Contract on Etherscan

Once verified, Etherscan lets you call your contract functions:

1. Go to your contract on https://sepolia.etherscan.io
2. Click the **"Contract"** tab
3. Click **"Read Contract"** to call view functions
4. Click **"Write Contract"** to call state-changing functions
   - Click **"Connect to Web3"** to connect MetaMask
   - Enter function arguments and click **"Write"**
   - MetaMask will prompt for confirmation

---

## Troubleshooting

**"Unable to verify — compiler version mismatch":**
- The compiler version in Etherscan must match exactly what Remix used
- In Remix compiler tab, look at the version with the full commit hash (e.g., `v0.8.26+commit.8a97fa7a`)
- Select that exact version on Etherscan

**"Invalid API Key":**
- Double-check you copied the full key
- Make sure you're using the key for Etherscan (not BscScan or another explorer)

**"Constructor arguments not found":**
- Re-deploy without constructor arguments (use a parameterless constructor) to simplify verification
- Or find the ABI-encoded arguments from the deployment transaction

**Already Verified error:**
- Your contract may already be verified — check the Contract tab for the green checkmark

---

## What a Verified Contract Looks Like

On Etherscan, a verified contract shows:
- Green checkmark on the Contract tab
- Full Solidity source code
- Contract ABI (application binary interface)
- "Read Contract" and "Write Contract" tabs

This is the standard for all serious smart contracts in the Ethereum ecosystem.

---

Congratulations! You have now written, deployed, and verified a smart contract on Ethereum Sepolia. You are officially a smart contract developer.
