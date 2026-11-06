# Lak7al Token 42 (HS42)

## Overview

Lak7al Token 42 (`HS42`) is an Ethereum fungible token designed to follow the ERC-20 standard. The smart contract uses OpenZeppelin's ERC-20 implementation and ownership utilities.

The current design provides:
- Standard ERC-20 transfers, approvals, and delegated transfers.
- An initial supply of 10,000 tokens minted to the deploying account.
- Owner-restricted minting.
- Holder-initiated burning of the caller's own tokens.

There is currently no maximum supply cap. The owner can mint additional tokens as long as the transaction satisfies the contract's rules.

## Token parameters

| Parameter | Value |
|---|---|
| Token name | `lak7al42` |
| Symbol | `HS42` |
| Blockchain | Ethereum |
| Token standard | ERC-20 |
| Decimals | 18 (OpenZeppelin ERC20 default) |
| Initial supply | 10,000 HS42 |
| Mint permission | Contract owner only |
| Burn permission | Each holder can burn their own tokens |
| Maximum supply | No cap currently implemented |

Amounts passed to ERC-20 functions are expressed in the smallest unit. With 18 decimals, 1 HS42 equals `1 * 10^18` base units.

## Repository structure

```text
tokenizer/
├── README.md
├── code/
│   └── Lak7alToken42.sol
├── deployment/
│   ├── README.md
│   └── addresses.json
└── documentation/
    ├── architecture.md
    ├── tokenomics.md
    ├── security.md
    └── usage.md
```

This is a suggested structure for the submitted project. The Solidity source is kept in the required root `code/` folder. Remix workspace files may also be kept in the Remix workspace; export or copy the final reviewed source into this folder for submission.

## Technology choices

- **Ethereum:** selected as the target blockchain.
- **Solidity:** used to implement the smart contract.
- **ERC-20:** provides a widely supported fungible-token interface.
- **OpenZeppelin Contracts:** provides established ERC-20 and ownership implementations rather than reimplementing the standard manually.
- **Remix IDE:** used to write, compile, test, and deploy the contract through its browser-based development environment.

Use a specific, reviewed OpenZeppelin Contracts release. Avoid importing source from a mutable `master` branch. Record the exact OpenZeppelin version and compiler version used for the final deployment.

## Compile and test in Remix

1. Open Remix IDE and create or open the Solidity file for the token.
2. Confirm the OpenZeppelin imports resolve and the compiler version matches the Solidity pragma and selected dependency version.
3. Open **Solidity Compiler**, select the intended compiler version, and compile the contract.
4. Open **Solidity Unit Testing** if you have written Solidity unit tests, then run the test suite and save the actual results.
5. Also use **Deploy & Run Transactions** to perform manual interaction checks. Test both the owner account and a different account.

Do not report tests as passing until they have actually been run successfully. See [Usage Guide](documentation/usage.md) for the detailed Remix workflow.

## Deployment

The intended public test network for initial deployment is Sepolia. In Remix, select **Injected Provider** in Deploy & Run Transactions after connecting a wallet configured for Sepolia. Confirm the network and account in the wallet before deploying.

Fill in the actual details after deployment:
- Network: `Sepolia`
- Chain ID: `11155111`
- Contract address: `TO_BE_FILLED_AFTER_DEPLOYMENT`
- Deployer / initial owner: `TO_BE_FILLED`
- Deployment transaction: `TO_BE_FILLED`
- Explorer URL: `TO_BE_FILLED`

Never commit private keys, seed phrases, or API secrets.

## Documentation

- [Architecture](documentation/architecture.md)
- [Tokenomics](documentation/tokenomics.md)
- [Security considerations](documentation/security.md)
- [Usage guide](documentation/usage.md)
- [Deployment record](deployment/README.md)

## Project purpose

The project demonstrates the design, implementation, testing, and deployment of an ERC-20 token. It also demonstrates how token supply management and ownership permissions can be implemented and tested in a smart contract.

The project does not claim that the token has a market value, is backed by assets, or provides financial returns.
