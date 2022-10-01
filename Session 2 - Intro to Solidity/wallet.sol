// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Wallet {
    address payable public owner; // create a global variable representing the owner of the wallet (payable so the address can send/receive money)

    constructor() {
        // code within the constructor will run immediately when the contract is compiled
        owner = payable(msg.sender);
    }

    receive() external payable {} // receive() is a default function enabling a contract to receive money

    function withdraw(uint256 amount) external {
        require(msg.sender == owner, "Not the owner of this wallet"); // make sure function invoker (msg.sender) is the owner of the wallet
        require(
            address(this).balance >= amount,
            "Withdraw amount exceeds wallet balance"
        ); // make sure the wallet has enough balance to withdraw the amount
        payable(msg.sender).transfer(amount); // trasnfer amount to function invoker
    }

    function getBalance() external view returns (uint256) {
        return address(this).balance; // return balance of contract
    }
}
