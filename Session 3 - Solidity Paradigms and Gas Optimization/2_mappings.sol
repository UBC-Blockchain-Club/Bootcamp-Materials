// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract Mappings {
    mapping(address => uint256) balances;

    function get(address _addr) public view returns (uint256) {
        return balances[_addr];
    }

    function set(address _addr, uint256 _i) public {
        balances[_addr] = _i;
    }

    function remove(address _addr) public {
        delete balances[_addr];
    }

    {
        0x01: 10,
        0x100000, 20
    }
}
