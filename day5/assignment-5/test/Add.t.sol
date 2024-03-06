// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import "forge-std/console.sol";
import {Add} from "../src/Add.sol";

contract AddTest is Test {
    Add add;

    function setUp() public {
        add = new Add();
    }

    function testAddAssembly() public {
        uint256 a = 10;
        uint256 b = 20;
        uint256 result = add.addAssembly(a, b);
        console.log(result);
        assertEq(result, 30);
    }
}
