# Architecture

## 1. System overview

Lak7al Token 42 is an ERC-20 smart contract deployed to an Ethereum-compatible network. The contract is the authoritative source for token balances, total supply, and allowances.

Users interact with the contract through wallets, Remix IDE, block explorers, or other applications that support ERC-20.

## 2. Main components

### ERC20

The contract inherits OpenZeppelin's `ERC20` implementation. This supplies the standard token interface and accounting logic, including:

- `totalSupply()`
- `balanceOf(address)`
- `transfer(address,uint256)`
- `approve(address,uint256)`
- `allowance(address,address)`
- `transferFrom(address,address,uint256)`
- `Transfer` and `Approval` events
- `decimals()` (18 by default)

These functions should not be reimplemented without a specific reason.

### Ownable

The contract inherits OpenZeppelin's `Ownable` implementation. The constructor initializes the owner to the deploying account using `Ownable(msg.sender)` (OpenZeppelin Contracts v5). The `onlyOwner` modifier protects the custom mint function.

### Custom mint function

`mint(address to, uint256 amount)` calls the inherited internal `_mint` function and is protected by `onlyOwner`.

- `msg.sender` identifies the caller.
- `owner()` identifies the current owner.
- `to` identifies the address receiving the newly minted tokens.

The owner may mint tokens to an address other than their own.

### Custom burn function

`burn(uint256 amount)` calls `_burn(msg.sender, amount)`. A caller can burn their own tokens, but cannot choose another account as the account to debit. This design does not include `burnFrom`.

## 3. High-level flows

### Deployment and initial mint

1. The deployer selects the intended compiler and deployment environment in Remix.
2. The deployer submits the contract-creation transaction through **Deploy & Run Transactions**.
3. The constructor initializes the ERC-20 name and symbol.
4. `Ownable(msg.sender)` sets the deployer as initial owner.
5. `_mint` creates 10,000 tokens (in base units) for the deployer.
6. The deployment transaction creates the contract on the selected network.

### Mint

1. A caller invokes `mint(to, amount)`.
2. `onlyOwner` checks whether the caller is the current owner.
3. If the caller is not the owner, the transaction reverts.
4. If authorized, `_mint` increases `totalSupply` and the recipient's balance.
5. A standard `Transfer` event is emitted from the zero address to the recipient.

### Burn

1. A holder invokes `burn(amount)`.
2. The contract uses `msg.sender` as the account to debit.
3. If the holder has insufficient balance, the transaction reverts.
4. Otherwise, the holder's balance and `totalSupply` decrease.
5. A standard `Transfer` event is emitted from the holder to the zero address.

### Transfer

A holder invokes `transfer(to, amount)`. The sender's balance decreases and the recipient's balance increases. `totalSupply` does not change, and a `Transfer` event is emitted.

## 4. State and events

Token balances, total supply, allowances, and ownership are contract state. Events are transaction logs intended for external observers and applications; they are not a replacement for contract storage.

For a normal transfer, total supply remains unchanged. Minting increases total supply; burning decreases it.

## 5. Trust boundaries

The owner has privileged minting authority. Because no maximum supply cap is currently implemented, minting is not bounded by a contract-level cap. Users must account for this trust assumption.

Wallets and frontends are external interfaces. The smart contract enforces permissions and token accounting; a frontend must not be treated as the security boundary.
