// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import "forge-std/console.sol";
import {Balance} from "../src/Balance.sol";

contract BalanceTest is Test {
    Balance balance;

    function setUp() public {
        balance = new Balance();
    }

    function testCallBalance() public {
        uint256 result = balance.callBalance();
        assertEq(result, 0);
    }

      function testCallBalanceNonZero() public {
        uint256 result = balance.callBalance{value:1e18}();
        console.log(result);
        assertEq(result, 1e18);
    }
    
}