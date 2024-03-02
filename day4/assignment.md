## Optimizing Storage
### By re ordering the variables, can you reduce the number of storage slots needed ?

```solidity
// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Store {

    struct payments {
        bool valid;
        uint256 amount;
        address sender;
        uint8 paymentType;
        uint256 finalAmount;
        address receiver;
        uint256 initialAmount;
        bool checked;
    }
    uint8 index;
    uint256 public number;
    bool flag1;
    address admin;
    mapping (address=>uint256) balances;
    bool flag2;
    address admin2;
    bool flag3;
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
```
The rearranged variable can you found in the contract StoreOP.sol, the slots used by the contract was reduced from 60 to 43, by rearranging the variable declaration. We can find the storage slot visualization in the images as well.  

## Is This Valid
[The Code snippet](https://file.notion.so/f/f/d0c8094a-e610-4814-9977-ce61e347ef5a/ec4ede2e-87a9-4d47-9a6d-919724e3346d/Homework4.pdf?id=e587822c-3e89-47b5-a2b9-caa1abc55356&table=block&spaceId=d0c8094a-e610-4814-9977-ce61e347ef5a&expirationTimestamp=1709496000000&signature=6bioIeRIHAmTzpSRgd5R_hRHC8QBPlEa-L7c9QbCzas&downloadName=Homework4.pdf)
is valid as we can pass a function as a augment to an other function.