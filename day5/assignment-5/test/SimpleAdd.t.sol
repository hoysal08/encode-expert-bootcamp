// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;
import {Test} from "forge-std/Test.sol";
import {SimpleAdd} from "../src/SimpleAdd.sol";
import "forge-std/console.sol";

contract SimpleAddTest is Test {
    SimpleAdd simpleAdd;

    function setUp() public {
        simpleAdd = new SimpleAdd();
    }

    function testAddTwoNumbers() public {
        uint256 a = 10;
        uint256 b = 20;
        uint256 result = simpleAdd.addTwoNumbers(a, b);
        console.log(result);
        assertEq(result, 30);
    }
}