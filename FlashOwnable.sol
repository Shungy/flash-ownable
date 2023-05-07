// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @dev If you want to be able to shill your coin as "ownership renounced", instead of using
 * OpenZeppelin's Ownable, just inherit this as `contract MyContract is FlashOwnable`, and you will
 * save plenty of gas.
 */
abstract contract FlashOwnable {
    event OwnershipTransferred(address indexed previousOwner, address indexed newOwner);

    constructor() {
        emit OwnershipTransferred(address(0), msg.sender);
        emit OwnershipTransferred(msg.sender, address(0));
    }

    function owner() external pure returns (address) {
        return address(0);
    }
}
