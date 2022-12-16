// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

import "./SimpleStorage.sol";


contract ExtraStorage is SimpleStorage{
    // +5 
    // over ride
    // virtual override
    // mention virtual in simplestorage
    // override in child contract
    function store(uint256 _favouriteNumber) public override{
        favnumber=_favouriteNumber+5;
    }
}