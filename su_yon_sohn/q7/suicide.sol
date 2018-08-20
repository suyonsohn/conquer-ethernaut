pragma solidity ^0.4.24;

contract Suicide {

    function dieAndDonate() public payable {
        selfdestruct(0x48b44302fe8307770dbec8ded3e7794f4696fdbc);
    }
}