// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract SolidityIntroduction { // all code goes within this contract

    // TYPES and VARIABLES
    

    // type name = value;
    
    address 0x0;
    string "Hello World";
    uint 1;
    uint256 256;
    uint8 8; // being specific with uints helps with gas optimization
    struct {
        name: string;
        age: uint16;
    }

    // SCOPE

    // global variable - accessible across entire contract
    uint hi = 3;

    function doSomething() {
        // local variable - only accessible within contract, will be selected over global variable with same name
        uint hi = 2;
        // hi == 2, not 3
        return 0;
    }


    // MAPPINGS - GOING OVER THIS IN SESSION 3

    mapping(address => string) public myMap;

    function addToMap(address addr, string value) private {
        myMap[addr] = value;
    }

    function returnMap() {
        return myMap;
    }


    // FUNCTIONS AND PRIVACY

    function printName(string name) public returns (string) {
        return name;
    }

    function printNamePrivate(string name) private returns (string) {
        return name;
    }

    // VIEW FUNCTIONS - a state this function only reads values from blockchain (going over in session 3)

    function returnMapping() public view {
        return myMap;
    }


}