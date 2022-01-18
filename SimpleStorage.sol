// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SimpleStorage {

    bool favoritebool = false;
    string favoriteString = "String";
    int256 favoriteInt = -5;
    address favoriteAddress = 0x75773071458Df6F83cFb6E02586Ff992Cf736709;

    uint256 public favoriteNumber = 5;

    struct People {
        uint256 favoriteNumber;
        string name;
    }

    People public person = People({favoriteNumber: 2, name: "Patrick"});

    People[] public people;

    mapping(string => uint256) public nameToFavoriteNumber;


    function store(uint256 _favoriteNumber) private {
        favoriteNumber = _favoriteNumber;
        // This variable is in function scope only
        // uint256 test = 4;
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People({favoriteNumber: _favoriteNumber, name: _name}));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

}