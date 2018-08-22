1. To use the fallback function, I need to send the value equal to or larger than the prize. Let's check what the value of the prize is.
`(await contract.prize()).toNumber()`
2. Send the value equal to the prize.
`contract.sendTransaction({value:1000000000000000000})`
3. Check who the king is now.
`await contract.king()`