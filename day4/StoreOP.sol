// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract StoreOP {

    struct payments {
        uint256 amount;
        uint256 finalAmount;
        uint256 initialAmount;
        address sender;
        uint8 paymentType;
        bool valid;
        bool checked;
        address receiver;
    }
    uint256 public number;
    mapping (address=>uint256) balances;
    address admin2;
    uint8 index;
    bool flag1;
    bool flag2;
    bool flag3;
    address admin;
    payments[8] topPayments;


    constructor(){

    }


    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
} 