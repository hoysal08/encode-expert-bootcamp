// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test} from "forge-std/Test.sol";
import "forge-std/console.sol";
import {ValidEmitter} from "../src/ValidEmitter.sol";

contract ValidEmitterTest is Test {
    ValidEmitter validEmitter;

    event transferOccurred(address, uint256);

    bytes4 validSignature = bytes4(keccak256("transfer(address,uint256)"));
    bytes4 inValidSignature = bytes4(keccak256("balanceOf(address)"));

    function setUp() public {
        validEmitter = new ValidEmitter();
    }

    function testCheckCall() public {
        bytes memory data = abi.encode(validSignature, address(this), 1e18);
        console.logBytes(data);
        vm.expectEmit();
        emit transferOccurred(address(this), 1e18);
        validEmitter.checkCall(data);
    }

    function testCheckCallInvalid() public {
        bytes memory data = abi.encode(inValidSignature, address(this), 1e18);
        vm.expectRevert("Invalid data");
        validEmitter.checkCall(data);
    }
}
