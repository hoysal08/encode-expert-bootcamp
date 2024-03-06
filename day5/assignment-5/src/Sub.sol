pragma solidity ^0.8.4;

contract SubOverflow {
    // Modify this function so that on overflow it returns the value 0
    // otherwise it should return x - y
    function subtract(uint256 x, uint256 y) public pure returns (uint256) {
        // Write assembly code that handles overflows
        assembly {
            let result := sub(x, y)
            if lt(x, result) { result := 0 }
            mstore(mload(0x40), result)
            mstore(0x40, add(mload(0x40), 0x20))
            return(sub(mload(0x40), 32), 32)
        }
    }
}
