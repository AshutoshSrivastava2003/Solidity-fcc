// SPDX-License-Identifier: MIT
pragma solidity 0.8.8;

// EVM : Ethereum Virtual Machine
// Avalanche, Fantom, Polygon
contract SimpleStorage{
    uint256 public favnumber=5;


    // People public person=People({favno:2,name: "Ash"});
    struct People{
        uint256 favno;
        string name;
    }
    //dynamic array
    People[] public people;

    //a mapping is a dictionary
    mapping(string => uint256) public nameToFavoriteNumber;

    //static array
    // People[3] public people;

    function store(uint256 _favouriteNumber) public{
        favnumber=_favouriteNumber;
        retrieve();
        // favnumber=favnumber+1;
    }

    //view,pure need no gas
    //costs gas only when read inside a function that costs gas
    function retrieve() public view returns (uint256){
        return favnumber;
    }
    function retrieve2() public pure returns (uint256){
        return (1+1);
    }
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        People memory newPerson=People({favno:_favoriteNumber,name: _name});
        people.push(newPerson);
        // alternate way :
        //  people.push(People(_favoriteNumber, _name));

        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    //calldata, memory, storage

    //calldata and memory are temporarily stored in the function
    
    //calldata cannot be modified
    //memory can be modified

    //storage variables exist outside functions like favnumber
    //int will be in mem
    //struct array and mapping need to specified
}
//0xd9145CCE52D386f254917e481eB44e9943F39138