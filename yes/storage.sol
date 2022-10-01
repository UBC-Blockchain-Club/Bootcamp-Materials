// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0; // version of solidity we will be using

contract Storage {
    uint256 number; // global variable representing the number we will be storing

    function store(uint256 num) public {
        number = num; // set the number equal to the num the user has passed through
    }

    function retrieve() public view returns (uint256) {
        return number; // retrieve the number stored in the contract
    }
}
