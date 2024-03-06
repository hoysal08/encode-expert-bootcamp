// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import "forge-std/console.sol";
import {Scope} from "../src/Scope.sol";

contract ScopeTest is Test {
    Scope scope;

    function setUp() public {
        scope = new Scope();
    }

    function testIncrement() public{
        scope.increment(50);
        assertEq(scope.count(), 60);
    }
}