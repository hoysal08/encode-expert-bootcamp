// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import "forge-std/console.sol";
import {SubOverflow} from "../src/Sub.sol";

contract SubTest is Test {
    SubOverflow subOverflow;

    function setUp() public {
        subOverflow = new SubOverflow();
    }

    function testSubtractOverFlow() public {
        uint256 a = 10;
        uint256 b = 20;
        uint256 result = subOverflow.subtract(a, b);
        console.log(result);
        assertEq(result, 0);
    }

    function testSubtract() public {
        uint256 a = 20;
        uint256 b = 10;
        uint256 result = subOverflow.subtract(a, b);
        console.log(result);
        assertEq(result, 10);
    }
}
