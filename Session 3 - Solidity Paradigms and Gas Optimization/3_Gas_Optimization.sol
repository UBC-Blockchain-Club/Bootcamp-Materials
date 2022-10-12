// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract GasOptimization {
    // general rules: 
    // - minimize on-chain data and operations 
    // - do not loop through long arrays (use mappings instead)
    // - perform minimal string operations (if you still need to store, do operations off chains)
    // - always pack similar data types together
    // - delete variables you don't need
    // - try not to change storage data

    // no need to initialize variables with default values
    address owner; // default to 0x0

    // set the variable in the constructor
    constructor() {
        owner = msg.sender;
    }

    // pack uints
    uint // 256 bit by default
    uint128
    uint64
    uint32
    uint16
    uint8

    // pack structs

    struct user {
        string name;
        uint8 age;
        uint32 balance;
    }

    // external is cheaper than public
    function addNums(uint64 num1, uint64 num2) external returns (uint64) {
        return num1 + num2;
    } 

    // use short strings in requires
    modifier isOwner() internal {
        // bad code
        require(msg.sender == owner, "This owner of this contract is not the current address");
        // good code
        require(msg.sender == owner, "Not Owner");
        _;
    } 

    // avoid arrays and array operations (use mappings)
    for (uint i = 0; i < array.length; i++) {
        array[i].doSomething; // operation on every array element uses a lot of gas (based on arr size)
    }

}