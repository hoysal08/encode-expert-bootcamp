pragma solidity ^0.8.4;

contract Balance {
    function callBalance() payable public returns (uint256) {
        assembly {
            let call_value := callvalue()
            mstore(mload(0x40), call_value)
            return(mload(0x40), 32)
        }
    }
}
