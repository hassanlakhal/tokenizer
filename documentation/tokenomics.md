# Tokenomics

## 1. Token identity

| Property | Current design |
|---|---|
| Name | `lak7al42` |
| Symbol | `HS42` |
| Standard | ERC-20 |
| Network | Ethereum |
| Decimals | 18 |
| Initial supply | 10,000 HS42 |

The name and symbol are contract metadata. The decimals value affects display and denomination; it does not change the underlying integer arithmetic.

## 2. Initial supply

At deployment, the constructor mints 10,000 HS42 to the deploying account. With 18 decimals, the amount passed to `_mint` is `10_000 * 10 ** decimals()`, or 10,000 × 10^18 base units.

## 3. Minting policy

Only the current contract owner can call `mint(to, amount)`. The owner can mint tokens to any valid recipient address.

There is currently no maximum supply cap. The owner can increase supply repeatedly. This is a significant design choice and should be made explicit to users. If a maximum supply is adopted later, implement and test the enforcement in the contract before describing it as a feature.

## 4. Burning policy

Any holder can call `burn(amount)` to destroy tokens from their own balance. Burning reduces both the caller's balance and the total supply. The current design does not let a caller burn another account's tokens through this function.

## 5. Transfers and allowances

HS42 supports standard ERC-20 transfers:
- `transfer` moves tokens from the caller to a recipient.
- `approve` sets an allowance for a spender.
- `transferFrom` lets an approved spender transfer tokens on behalf of the token holder, within the allowance.

Transfers do not create or destroy tokens, so they do not change total supply.

## 6. No financial promises

This document describes smart-contract mechanics only. It does not promise a market price, liquidity, profit, redemption, asset backing, or investment return. Any future utility or distribution policy must be documented separately.
