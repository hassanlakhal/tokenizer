# Deployment Record

This directory records deployment information. Fill in values only after confirming them in Remix, the connected wallet, and the relevant block explorer.

## Target network

- Intended initial public network: Sepolia
- Chain ID: `11155111`
- Deployment tool: Remix IDE (**Deploy & Run Transactions**)
- Wallet environment: **Injected Provider**

## Deployment details

| Field | Value |
|---|---|
| Network | Sepolia (planned) |
| Chain ID | 11155111 |
| Contract address | `0x05f0f1F36CC4A811711Cf63a24F0dA68ce1f6a09` |

## Before deployment in Remix

- [ ] Compile the final contract successfully in Solidity Compiler.
- [ ] Review compiler warnings.
- [ ] Run automated tests in Solidity Unit Testing, if test files are provided.
- [ ] Perform manual interaction tests in a local Remix VM.
- [ ] Confirm token name, symbol, initial supply, and permissions.
- [ ] Confirm that the no-cap minting policy is intentional.
- [ ] Select the intended public test network in the wallet.
- [ ] Confirm Remix uses Injected Provider and displays the intended account/network.
- [ ] Protect wallet secrets; never enter a seed phrase into project documentation.

## After deployment

- [ ] Save the contract address.
- [ ] Save the deployment transaction hash.
- [ ] Confirm the deployer and `owner()` address.
- [ ] Read `name`, `symbol`, `decimals`, and `totalSupply` from the deployed contract.
- [ ] Confirm the initial recipient balance.
- [ ] Verify the contract source on the Sepolia block explorer.
- [ ] Test basic interactions on Sepolia.
- [ ] Update the root README and this deployment record.

## addresses.json

Update `addresses.json` only with verified values. Do not invent or guess addresses.
