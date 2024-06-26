---

# HealthToken (HT) - ERC20 Token

## Introduction

Welcome to the HealthToken (HT) repository! This project is a part of the ETH AVAX Module 3 course and demonstrates the creation of a custom ERC20 token using Solidity. The token is designed with additional functionalities such as minting and burning, with special privileges assigned to the contract's creator.

## Features

- **ERC20 Standard Compliance**: Inherits from OpenZeppelin's ERC20 contract.
- **Minting**: Only the contract's creator (chief) can mint new tokens.
- **Burning**: Any token holder can burn tokens from their balance.
- **Transfer**: Standard ERC20 token transfer functionality.

### How you able to interact with the contract?
1. Go on Remix IDE, paste the code and then compile and deploy it.
2. Make sure you have multiple accounts with Ethers in it. (Try VM Remix Paris)
3. Then deploy the contract.
4. Now first we have to mint the tokens and So we need the country address where we want to mint the tokens.
5. After minting, choose different account and try other functionalities like Burning and the transfer of tokens.

### Key Components

1. **Chief Role**: The deployer of the contract is assigned as the `chief`, who has the exclusive right to mint new tokens.
2. **Mint Function**: Allows the `chief` to mint new tokens and assign them to any address.
3. **Burn Function**: Any token holder can burn tokens from their balance.
4. **Transfer Function**: Tokens can be transferred between addresses as per the ERC20 standard.

### Interacting with the Contract

After deploying the contract, you can interact with it using a web3 provider like MetaMask or through a frontend interface.

1. **Minting Tokens**
    - Only the `chief` can mint tokens by calling the `mint` function.
    ```javascript
    contract.methods.mint(receiverAddress, amount).send({ from: chiefAddress });
    ```

2. **Burning Tokens**
    - Any token holder can burn tokens by calling the `burn` function.
    ```javascript
    contract.methods.burn(holderAddress, amount).send({ from: holderAddress });
    ```

3. **Transferring Tokens**
    - Tokens can be transferred between addresses using the `transfer` function.
    ```javascript
    contract.methods.transfer(receiverAddress, amount).send({ from: senderAddress });
    ```

## Contributing

Contributions are welcome! Please fork this repository and submit pull requests to contribute to the project.


## Authors

Aryan Sharma


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
