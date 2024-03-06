## Create a Solidity contract with one function The solidity function should return the amount of ETH that was passed to it, and the function body should be written in assembly

Solution assembly2/src/Balance.sol

## Explain what the following code is doing in the Yul ERC20 contract

```solidity
function allowanceStorageOffset(account, spender) -> offset {
offset := accountToStorageOffset(account)
mstore(0, offset)
mstore(0x20, spender)
offset := keccak256(0, 0x40)
}
```

The provided Yul code calculates the storage slot offset for the allowance value of a specific account and spender pair in an ERC20 contract. It first determines the offset for the account, then stores it along with the spender address in memory. Next, it computes the Keccak-256 hash of this combined data range to generate the final offset. This resulting offset indicates the precise location in the contract's storage where the allowance value for the account and spender is stored.
