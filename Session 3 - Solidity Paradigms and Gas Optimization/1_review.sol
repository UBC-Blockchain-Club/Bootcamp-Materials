// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Review {
    // Scope  / variables
    string name;
    address addr;

    // structs

    struct Person {
        string name;
        uint age;
    }

    Person("Bob", 12);
    Person({name: "Bob", age: 12}) // same thing as above

    
    // FUNCTIONS

    // Creating functions
    function addNumbers(uint num1, uint num2) public returns (uint) {
        return num1 + num2;
    }

    // Calling functions
    addNumbers(1, 2); // 3

    // Function Visibility 
    function viewInteger() public view returns (uint) {
        return a;   
    }
        // public - any contract and account can call
        // private - only inside the contract that defines the function
        // internal- only inside contract that inherits an internal function
        // external - only other contracts and accounts can call
   
    // Constructors
    constructor(string memory _name) {
        name = _name;
        addr = msg.sender;
    }

    // ARRAYS    
    uint[] numbers;
    uint2[4] numbers2 = [1, 2, 3, 4];

    numbers2[0]; // ... n

    // array operations

    numbers.push(2); // [2]
    numbers.push("2"); // error

    // LOOPS
    // enable us to iterate through an array

    // for loop
    for(uint i = 0; i < numbers.length; i++) {
        print(numbers[i]);

        if (j == numbers2[j]) {
            break;
        } else {
            continue;
        }
    }

    // while loop
    uint j;
    while(j < numbers2.length) {
        j++;

    }

    // CHECKS 

    // Requires
    function sendMoney(address _to) external payable {
        require(msg.sender == address, "Not owner");
        _to.transfer(msg.value);
    }

}

// Review("Ryan");