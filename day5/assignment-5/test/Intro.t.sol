// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import "forge-std/console.sol";
import {Intro} from "../src/Intro.sol";

contract IntroTest is Test {
    Intro intro;

    function setUp() public {
        intro = new Intro();
    }

    function testIntro() public {
        uint16 result = intro.intro();
        console.log(result);
        assertEq(result, 420);
    }
}
