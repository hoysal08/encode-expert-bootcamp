## Look at the example [Gist](https://gist.github.com/extropyCoder/4243c0f90e6a6e97006a31f5b9265b94) When we do the CODECOPY operation, what are we overwriting ?

We overwrite code on the memory

## Could the answer to Q1 allow an optimisation?

We can maybe use calldata as it is more cheap to write to

## Can you trigger a revert in the init code in Remix ?

Yes, we can make a revert in the init code. But the contract will not be deployed as the contract creation transaction fails(reverts)

## Write some Yul to
1. Add 0x07 to 0x08
2. store the result at the next free memory location.
3. (optional) write this again in opcodes

 [Solution](./assignment-5/src/SimpleAdd.sol)

 ## Can you think of a situation where the opcode EXTCODECOPY is used 
 EXTCODECOPY can be used in the upgradable contracts

## Assembly coding questions
Solutions for the assemble can be found in /assignment-5