// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract SimpleAdd {
    function addTwoNumbers(uint256 a, uint256 b) public pure returns (uint256) {
        assembly {
            let result := add(a, b)
            let frPTR := mload(0x40)
            mstore(frPTR, result)
            mstore(0x40, add(frPTR, 0x20))
            return(frPTR, 0x20)
        }
    }
}
