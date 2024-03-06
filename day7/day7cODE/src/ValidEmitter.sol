// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/console.sol";

contract ValidEmitter {
    bytes4 validSignature = bytes4(keccak256("transfer(address,uint256)"));

    event transferOccurred(address, uint256);

    function checkCall(bytes calldata data) external {
        (bytes4 selector, address target, uint256 amount) = abi.decode(data, (bytes4, address, uint256));
        if (selector != validSignature) {
            revert("Invalid data");
        }
        emit transferOccurred(target, amount);
    }
}
