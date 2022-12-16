// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

import "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public simplestoreArr;

    function createSimpleStorageContract() public{
        SimpleStorage simplestore = new SimpleStorage();
        simplestoreArr.push(simplestore);
    }

    function sfStore(uint256 _simpleStorageIndex, uint256 _simpleStorageNumber) public {
        // Address 
        // ABI : application binary interface
        // SimpleStorage(address(simpleStorageArray[_simpleStorageIndex])).store(_simpleStorageNumber);
        simplestoreArr[_simpleStorageIndex].store(_simpleStorageNumber);
    }    
}