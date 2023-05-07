# FlashOwnable

FlashOwnable is an alternative contract module to Ownable. With FlashOwnable, you will be the owner of a contract only for a split second. During the deployment the contract ownership will be automatically renounced, and consequent queries to the `owner` function will return the zero address.

## Features

* Emits two useless events during deployment
* Has an `owner` function that always returns zero address

## Non-features

* `onlyOwner` modifier: The ownership is automatically renounced and the contract has no owner after deployment, hence there is no use of such modifier
* `transferOwnership` function: The contract has no owner after deployment, so the ownership cannot be transferred
* `renounceOwnership` function: The ownership is automaticaly renounced.

## Installation

### Foundry

```sh
$ forge install Shungy/flash-ownable
```

### Hardhat

```sh
$ yarn add https://github.com/Shungy/flash-ownable
```

## Usage

In your contract file first import FlashOwnable, then inherit it.

```sol
import "flash-ownable/FlashOwnable.sol";

contract MyContract is FlashOwnable {
```
