# Lak7al Token 42 (HS42)

> Status: Development. Update deployment and test details only after
> verifying them.

## Overview

Lak7al Token 42 (`HS42`) is an Ethereum ERC-20 token using OpenZeppelin
Contracts. The current design provides standard ERC-20 transfers and
allowances, an initial supply of 10,000 tokens minted to the deployer,
owner-only minting, and holder-initiated burning of the caller's own
tokens.

## Token parameters

  Property         Current design
  ---------------- ------------------------------------------------
  Name             `lak7al42`
  Symbol           `HS42`
  Network          Ethereum (Sepolia planned for test deployment)
  Standard         ERC-20
  Decimals         18 (OpenZeppelin default)
  Initial supply   10,000 HS42
  Minting          Current owner only
  Burning          Holder burns own balance
  Maximum supply   No cap currently implemented

Amounts passed to ERC-20 functions are base units. With 18 decimals, 1
HS42 = 10\^18 base units.

## Repository structure

``` text
tokenizer/
├── README.md
├── code/
│   ├── src/Token42.sol
│   ├── test/Token42.t.sol
│   ├── script/DeployToken42.s.sol
│   ├── foundry.toml
│   └── remappings.txt
├── deployment/
│   ├── README.md
│   └── addresses.json
└── documentation/
    ├── architecture.md
    ├── tokenomics.md
    ├── security.md
    └── usage.md
```

## Technology choices

-   Ethereum: selected target blockchain.
-   Solidity: smart-contract language.
-   ERC-20: standard fungible-token interface.
-   OpenZeppelin Contracts: reusable ERC-20 and ownership
    implementations. Pin a specific release; do not depend on a mutable
    `master` branch.
-   Foundry: compilation, testing, scripting, and deployment.

## Build and test

From `code/`:

``` bash
forge build
forge test -vv
```

Do not claim tests pass until they have actually been run successfully.

## Deployment record

-   Planned test network: Sepolia
-   Chain ID: `11155111`
-   Contract address: `PENDING`
-   Deployer / owner: `PENDING`
-   Explorer URL: `PENDING`

Never commit private keys, seed phrases, or API secrets.

## Purpose and limitations

This project demonstrates ERC-20 implementation, supply management,
access control, testing, and deployment. This documentation makes no
claim of market value, asset backing, liquidity, financial return, or
independent security audit.
