# Usage Guide — Remix IDE

## 1. Prerequisites

- A modern web browser and access to Remix IDE.
- The Solidity source file for the token.
- OpenZeppelin Contracts imports that resolve in Remix.
- A wallet such as MetaMask for deployment through **Injected Provider**.
- Sepolia test ETH for public testnet deployment and transactions.

Never share your wallet seed phrase or private key with Remix, a website, or another person.

## 2. Create or open the contract

1. Open Remix IDE.
2. In the File Explorer, create a Solidity file such as `Lak7alToken42.sol`.
3. Paste or write the reviewed contract source.
4. Confirm the OpenZeppelin imports resolve. Use a specific OpenZeppelin release rather than a mutable `master` branch import.
5. Save the file and keep a copy of the final source in the repository's `code/` directory.

## 3. Compile the contract

1. Open **Solidity Compiler** from the Remix sidebar.
2. Select a compiler version compatible with the contract's `pragma` statement and dependency version.
3. Review compiler settings. Keep the settings consistent between testing, deployment, and verification.
4. Click **Compile Lak7alToken42.sol**.
5. Resolve all errors and review warnings before proceeding.

Record the exact Solidity compiler version and relevant settings used for the final deployment.

## 4. Automated tests in Remix

If you have created Solidity unit-test files compatible with Remix:

1. Open the **Plugin Manager** and activate **Solidity Unit Testing** if it is not already available.
2. Open the Solidity Unit Testing panel.
3. Select the test file(s) and run the tests.
4. Review each passing and failing test. Fix failures; do not treat an unrun test as a pass.
5. Save the test output or capture evidence for your project report.

At minimum, tests should cover initial supply, owner-only minting, rejection of non-owner minting, holder burning, transfers, approvals, delegated transfers, and total-supply changes.

## 5. Deploy locally in Remix

1. Open **Deploy & Run Transactions**.
2. Choose a local Remix VM environment for isolated testing.
3. Select `Lak7alToken42` as the contract.
4. Confirm constructor arguments, if any. The described design has no constructor arguments beyond the ERC-20 name/symbol and owner initialization in code.
5. Click **Deploy**.
6. Use the accounts provided by the local Remix VM to test the owner and non-owner cases.

A local Remix VM deployment is temporary and is not a public blockchain deployment.

## 6. Manual interaction checks

After deploying, expand the deployed contract in **Deployed Contracts**.

Read-only checks include:
- `name()` — should return `lak7al42`.
- `symbol()` — should return `HS42`.
- `decimals()` — should return `18`.
- `totalSupply()` — initially represents 10,000 HS42 in base units.
- `owner()` — should return the deploying account.
- `balanceOf(address)` — returns the token balance of the selected address in base units.

Transaction checks:

- Call `transfer(recipient, amount)` from a holder account.
- Call `approve(spender, amount)` from the token holder account.
- Call `transferFrom(holder, recipient, amount)` from the approved spender account.
- Call `mint(recipient, amount)` from the owner account; it should succeed.
- Switch Remix's selected account to a non-owner and call `mint`; it should revert.
- Call `burn(amount)` from an account with sufficient tokens; it should burn from that caller's balance.

Amounts are in base units. With 18 decimals, 1 HS42 equals `1000000000000000000` base units. Use the correct amount for every test.

## 7. Deploy to Sepolia

1. Configure your wallet for the Sepolia test network and obtain Sepolia test ETH from a trusted faucet.
2. In Remix, open **Deploy & Run Transactions**.
3. Select **Injected Provider** as the environment.
4. Approve the connection in your wallet.
5. Confirm that Remix and the wallet show Sepolia and the intended deployer account.
6. Select the token contract and click **Deploy**.
7. Review the transaction details in your wallet and confirm only if the network, account, and deployment are correct.
8. After confirmation, copy the deployed contract address and deployment transaction hash.
9. Open the address in the Sepolia block explorer and verify the network and transaction details.

Do not publish private keys, seed phrases, or wallet recovery information.

## 8. Verify the contract

Use the block explorer's contract-verification workflow for the deployed network. Provide the exact source, compiler version, optimization settings, and constructor arguments used for deployment. Verification must match the deployed bytecode; do not claim verification until the explorer confirms it.

## 9. Record deployment information

Update `deployment/README.md` and `deployment/addresses.json` with the confirmed network, chain ID, contract address, deployer/owner address, transaction hash, explorer URL, compiler version, and OpenZeppelin version.
