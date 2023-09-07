# Avax-Eth Assignment

Using mint,burnTokens,transferTokens,getBalance,redeemTokens functions using testnet fuji network.

## Description

Contract for creating a degen token system for this game.

## Getting Started

## Initialize

1. Use hardhat init and select javascript.
2. Then create your contract in the contract folder.
3. Then use hardhat script to deploy this contract.

### Executing program

1. Named "DegenToken," the contract inherits from OpenZeppelin's ERC20, Ownable, and ERC20Burnable contracts.

2. In its constructor function, the token's name is set to "Degen," its symbol to "DGN," and no initial token supply is established.

3. The mint function empowers the contract owner to generate and allocate new tokens to any address, with exclusive access limited to the owner.

4. The decimals function, returning 0, signifies that the token operates without decimal places.

5. Users can inspect their token balances using the getBalance function, which calls the balanceOf method on the contract.

6. The transferTokens function facilitates user-to-user token transfers, mandating sufficient balance and requiring prior approval before executing the transfer via transferFrom.

7. Users can obliterate (burn) their own tokens through the burnTokens function, contingent on possessing an adequate balance, invoking the inherited burn function from ERC20Burnable.

8. To view available store items, the showStoreItems function logs them using console.log and returns a string listing these items.

9. Users can exchange their tokens for in-game store items via the redeemTokens function. Users choose items using the _userChoice parameter. Based on the choice, the function verifies the user's balance, approves the transfer, transfers the tokens to the owner's address, logs a confirmation message, and returns true. If an invalid choice is made, it logs an error message and returns false.
