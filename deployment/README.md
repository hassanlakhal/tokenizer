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
- [ ] Complete the MetaMask setup and Remix connection steps below.
- [ ] Confirm the selected MetaMask account has enough Sepolia test ETH for deployment gas.

## MetaMask setup before deployment

1. Install the MetaMask browser extension from the official MetaMask website and create or import a wallet.
2. Open MetaMask and unlock it.
3. Select the account that will deploy the contract. The connected account will be the deployer and, if the contract assigns ownership to the deployer, its owner.
4. Enable **Show test networks** in MetaMask settings, then select **Sepolia** from the network selector.
5. Confirm the selected network is Sepolia and its Chain ID is `11155111`.
6. Get Sepolia test ETH from a reputable Sepolia faucet. Check the faucet's current requirements; some require a small amount of mainnet ETH or account verification.
7. In MetaMask, confirm the selected account has enough Sepolia ETH to pay the deployment gas fee.
8. Keep your Secret Recovery Phrase and private keys private. Never share them, enter them into Remix, or save them in this repository.

## Connect MetaMask to Remix

1. Open [Remix IDE](https://remix.ethereum.org/) in the same browser where MetaMask is installed.
2. Open **Deploy & Run Transactions** in Remix.
3. In the **Environment** dropdown, choose **Injected Provider - MetaMask**.
4. MetaMask should open a connection request. Review the website requesting access and approve the connection.
5. If MetaMask asks you to choose accounts, select the intended deployer account and confirm.
6. Check the account and network displayed in Remix. They must match the account selected in MetaMask and the Sepolia network.
7. If the wrong network or account appears, change it in MetaMask and check Remix again before deploying.

## Deploy the contract using MetaMask

1. In Remix, open **Solidity Compiler** and compile the final contract successfully.
2. Return to **Deploy & Run Transactions**.
3. Confirm **Injected Provider - MetaMask** is selected.
4. Select the correct contract in the **Contract** dropdown.
5. Review the constructor parameters, if the contract has any. Enter the intended values carefully.
6. Click **Deploy** in Remix.
7. MetaMask opens a transaction confirmation. Review the network (Sepolia), deploying account, contract creation request, and estimated gas fee.
8. Confirm the transaction in MetaMask. Do not confirm if the account or network is incorrect.
9. Wait for the transaction to be confirmed. Remix should show the deployed contract under **Deployed Contracts**.
10. Copy the deployed contract address and deployment transaction hash. Confirm both on the Sepolia block explorer.

## After deployment

- [ ] Save the contract address.
- [ ] Save the deployment transaction hash.
- [ ] Confirm the deployer and `owner()` address.
- [ ] Read `name`, `symbol`, `decimals`, and `totalSupply` from the deployed contract.
- [ ] Confirm the initial recipient balance.
- [ ] Verify the contract source on the Sepolia block explorer.
- [ ] Test basic interactions on Sepolia.