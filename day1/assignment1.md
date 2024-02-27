## 1. Why is client diversity important for Ethereum

###  Security: Diverse clients mitigate the risk of a single point of failure. If one client has a vulnerability, attackers can't exploit it across the entire network if other clients are not affected.

### Decentralization: Client diversity reinforces the decentralized nature of Ethereum by preventing a single client or group from controlling the network's operation.

## 2. Where is the full Ethereum state held ?

### The full Ethereum state is distributed across all nodes on the Ethereum network. Each node maintains a copy of the entire blockchain.

## 3. What is a replay attack ? , which 2 pieces of information can prevent it ?
### A replay attack involves reusing a valid transaction from a previous interaction on the same or a different blockchain. This can lead to the unintended execution of the transaction again
###  -> timestamp
###  -> nounce
## 4. In a contract, how do we know who called a view function 
### We can't know who called a view function as there is no transaction that get's recorded on chain and anybody can call this function get the data from any nodes distributed over the network.