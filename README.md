# Avax-Eth Assignment

Going to use mint(),burnTokens(),transferTokens(),getBalance(),redeemTokens functions using testnet fuji network.

## Description

Contract for creating a token system for this game.

## Getting Started

## Initialize

1. Use hardhat init and select javascript.
2. Then create your contract in the contract folder.
3. Then use hardhat script as defined to deploy this contract.

### Executing program

1. The contract is named DegenToken and it inherits from the ERC20, Ownable, and ERC20Burnable contracts from OpenZeppelin.

2. The constructor function sets the name of the token to "Degen" and its symbol to "DGN". It does not set an initial token supply.

3. The mint function allows the contract owner to create and distribute new tokens to any address. Only the owner can call this function.

4. The decimals function returns 0, indicating that the token does not use decimal places.

5. The getBalance function allows users to check their token balance by calling balanceOf on the contract.

6. The transferTokens function enables users to transfer their tokens to another address. It requires the user to have a sufficient balance and approves the transfer before calling transferFrom to execute the transfer.

7. The burnTokens function allows users to burn (destroy) their own tokens. It requires the user to have a sufficient balance and calls the burn function inherited from ERC20Burnable to burn the tokens.

8. The showStoreItems function provides a view of available store items by logging them using console.log. It returns a string listing the available items.

9. The redeemTokens function allows users to redeem their tokens for items in the in-game store. The user selects an item using the _userChoice parameter, and based on the choice, the function checks if the user has a sufficient balance, approves the transfer, and transfers the tokens to the owner's address. It logs a message confirming the redemption and returns true. If an invalid choice is made, it logs an error message and returns false.

# Note: 

The contract is deployed on the Avalanche network using a deployment method such as Remix, Truffle, or a custom script. Ensure you have the necessary setup and AVAX cryptocurrency for gas fees.

Once deployed, players can interact with the contract to transfer tokens, redeem them for in-game items, check their token balances, and burn their own tokens if needed.
