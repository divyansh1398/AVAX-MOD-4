// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "hardhat/console.sol";

contract DegenToken is ERC20, Ownable, ERC20Burnable {
    constructor() ERC20("Degen", "DGN") {}

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function decimals() public pure override returns (uint8) {
        return 0;
    }

    function getBalance() external view returns (uint256) {
        return this.balanceOf(msg.sender);
    }

    function transferTokens(address _receiver, uint256 _value) external {
        require(
            balanceOf(msg.sender) >= _value,
            "You do not have enough Degen Tokens"
        );
        approve(msg.sender, _value);
        transferFrom(msg.sender, _receiver, _value);
    }

    function burnTokens(uint256 _value) external {
        require(
            balanceOf(msg.sender) >= _value,
            "You do not have enough Degen Tokens"
        );
        burn(_value);
    }

    function showStoreItems() external view returns (string memory) {
        console.log("The following items are available for purchase:");
        console.log("Selection 1: iPhone NFT");
        console.log("Selection 2: android NFT");
        console.log("Selection 3: blackberry NFT");
        return
            "The following items are available for purchase:\nSelection 1. iPhone NFT\nSelection 2. android NFT\nSelection 3. blackberry NFT";
    }

    function redeemTokens(uint8 _userChoice) external payable returns (bool) {
        if (_userChoice == 1) {
            require(
                this.balanceOf(msg.sender) >= 100,
                "You do not have enough Degen Tokens"
            );
            approve(msg.sender, 100);
            transferFrom(msg.sender, owner(), 100);
            console.log("You have redeemed for a iPhone NFT!");
            return true;
        } else if (_userChoice == 2) {
            require(
                this.balanceOf(msg.sender) >= 75,
                "You do not have enough Degen Tokens"
            );
            approve(msg.sender, 75);
            transferFrom(msg.sender, owner(), 75);
            console.log("You have redeemed for a android NFT!");
            return true;
        } else if (_userChoice == 3) {
            require(
                this.balanceOf(msg.sender) >= 50,
                "You do not have enough Degen Tokens"
            );
            approve(msg.sender, 50);
            transferFrom(msg.sender, owner(), 50);
            console.log("You have redeemed for a blackberry NFT!");
            return true;
        } else {
            console.log("That is not a valid choice");
            return false;
        }
    }
}
