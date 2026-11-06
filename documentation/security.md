# Security Considerations

## 1. Access control

The mint function must use OpenZeppelin's `onlyOwner` modifier. Without it, any account could create tokens.

The owner is initialized in the constructor. Confirm the owner address after deployment using `owner()` and record it in the deployment documentation.

## 2. Burning only the caller's tokens

The intended burn function is:

```solidity
function burn(uint256 amount) external {
    _burn(msg.sender, amount);
}
```

This prevents the caller from selecting another address as the account whose balance is reduced. Do not implement an unrestricted `burn(address account, uint256 amount)` unless the authorization model is deliberately changed and thoroughly tested.

## 3. Owner privilege and supply risk

The owner can mint an unlimited amount in the current design because no maximum supply cap is implemented. This is a significant trust and tokenomics consideration.

Possible future mitigations include a maximum supply cap enforced in the contract, transferring ownership to a carefully managed account, or using a multisignature wallet for owner operations. Renouncing ownership should only be considered if permanent loss of minting authority is intended and understood.

## 4. Dependency management

- Use a specific, reviewed OpenZeppelin Contracts release.
- Record the exact dependency and compiler versions used.
- Avoid importing Solidity source from a mutable remote `master` URL.
- Confirm that imported library source is the intended version before deployment.

## 5. Testing requirements

Use Remix's **Solidity Unit Testing** plugin for automated Solidity tests where applicable, and **Deploy & Run Transactions** for manual interaction tests. At minimum, test:

1. Initial supply and deployer balance.
2. ERC-20 transfer and insufficient-balance reverts.
3. Approval, allowance, and `transferFrom`.
4. Owner mint success.
5. Non-owner mint revert.
6. Mint to a recipient different from the owner.
7. Holder burning their own tokens.
8. Burning more than the caller's balance reverts.
9. Total supply changes correctly after mint and burn.
10. Ownership transfer behavior, if included in the project scope.

Save actual test results. Passing tests do not prove that the contract is free of vulnerabilities.

## 6. Operational security

- Never share or commit private keys or seed phrases.
- When using **Injected Provider**, verify the wallet account and network before confirming transactions.
- Use a public test network such as Sepolia before considering any production deployment.
- Verify the deployed contract source on the relevant block explorer.
- Check the network, chain ID, deployer, owner, and contract address before interacting.
- Treat ownership transfer and renunciation as high-impact operations.

## 7. Scope and limitations

This document is not a professional audit. Do not deploy to mainnet or represent the token as audited without an appropriate independent review.
