ERC-20 Token Standard

1. Introduction
ERC-20 is a technical standard used to create fungible tokens on the Ethereum blockchain. Fungible means that every token of the same type has the same value and can be exchanged with another token of that type.

For example, if someone owns 10 TOKEN and another person owns 5 TOKEN, each TOKEN is interchangeable with every other TOKEN of the same contract.

ERC-20 is not a blockchain or a cryptocurrency by itself. It is a set of common rules that a token smart contract follows so wallets, applications, and exchanges can interact with it consistently.
2. How an ERC-20 Token Works
An ERC-20 token is managed by a smart contract deployed on Ethereum. The contract keeps track of token balances and controls how tokens move between accounts.

When a user sends tokens, the smart contract updates the sender's and receiver's balances. The transaction is recorded on the blockchain, so the result can be checked by anyone.

The token does not usually have a separate blockchain. It uses the Ethereum network, and users pay transaction fees in ETH.
3. Main ERC-20 Functions
The ERC-20 standard defines common functions. The most important ones are:
- totalSupply() — returns the total number of tokens currently in circulation according to the contract.
- balanceOf(account) — returns the token balance of an account.
- transfer(to, amount) — sends tokens from the caller's account to another account.
- approve(spender, amount) — gives another account permission to spend up to a specified amount of the caller's tokens.
- allowance(owner, spender) — shows how many tokens a spender is still allowed to use.
- transferFrom(from, to, amount) — allows an approved spender to transfer tokens from another account, within the approved allowance.
These functions make token behavior predictable across Ethereum applications.
4. Transfer and Approval
There are two common ways to move ERC-20 tokens.
Direct transfer
If Account A wants to send tokens to Account B, Account A calls transfer(B, amount). The contract checks that Account A has enough tokens and then updates both balances.

Account A does not need to approve Account B first because Account A is sending its own tokens directly.
Approval and transferFrom
Approval is used when another account or application needs permission to spend tokens.
1. Account A calls approve(Account C, amount).
2. The contract records an allowance for Account C.
3. Account C can later call transferFrom(Account A, Account B, amount).
4. The contract checks the allowance and Account A's balance before moving the tokens.
Approval does not transfer tokens by itself. It only grants permission. The spender's later transaction is a separate blockchain transaction and normally pays its own gas fee.
5. Token Supply
An ERC-20 contract can manage its token supply in different ways.
- Initial supply: tokens created when the contract is deployed.
- Minting: creating new tokens and assigning them to an account. Minting must be controlled by rules defined in the contract.
- Burning: permanently removing tokens from an account and reducing the total supply.
Some tokens have a fixed supply. Others allow new tokens to be minted, sometimes with a maximum supply limit. The token contract determines which policy applies.
6. Events
ERC-20 contracts emit events to make important token actions visible to wallets, applications, and blockchain explorers.
- Transfer is emitted when tokens move between accounts. It is also commonly used when tokens are minted or burned.
- Approval is emitted when an account grants or changes a spending allowance.
Events help applications display token activity and allow users to inspect transactions.
7. ERC-20 Tokens and ETH
ETH and ERC-20 tokens are different:
ETH	ERC-20 token
Native asset of Ethereum	Token managed by a smart contract
Used to pay Ethereum gas fees	Usually requires ETH to pay gas for its transactions
Built into the Ethereum protocol	Follows rules implemented in a token contract


A user can hold ERC-20 tokens in an Ethereum-compatible wallet, but generally needs ETH in that wallet to pay for transactions involving those tokens.
8. Why ERC-20 Is Useful
ERC-20 provides a common interface for tokens. Because many tokens follow the same standard, wallets, decentralized applications, and other Ethereum services can support them without building a completely different integration for every token.

ERC-20 is commonly used for utility tokens, governance tokens, stablecoins, and project-specific digital assets. The standard defines how tokens are managed and transferred; it does not guarantee a token's value, quality, purpose, or safety.
9. Conclusion
ERC-20 is a shared standard that makes fungible tokens work consistently on Ethereum. A smart contract tracks balances, handles transfers, manages approvals, and may support minting or burning depending on its design.

The key ideas are simple: transfer sends tokens directly, approve grants spending permission, and transferFrom uses that permission to move tokens. Understanding these basics provides a foundation for learning how ERC-20 contracts are written, tested, and deployed.