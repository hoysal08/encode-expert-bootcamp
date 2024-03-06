## The parameter X represents a function.Complete the function signature so that X is a standard ERC20 transfer function (other than the visibility) The query function should revert if the ERC20 function returns false

```solidity
function query(uint _amount, address
_receiver, X) public {
...
}
```

Solution

```solidity
function query(uint _amount, address _receiver, function(uint, address) external returns (bool) X) public {
    // Perform the ERC20 transfer using the provided function
    bool success = X(_amount, _receiver);

    // Revert if the ERC20 transfer function returns false
    require(success, "ERC20 transfer failed");
    // Further actions after successful transfer
}
```
