// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

contract A {
    mapping(address => uint256) balances;

    function get(address _addr) public view virtual returns (uint256) {
        return balances[_addr];
    }
}

contract B is A {
    function get(address _addr) public view virtual override returns (uint256) {
        return super.get(_addr);
    }
}

contract C is B {
    uint256 age = 4;

    function get(address _addr) public view override returns (uint256) {
        return age;
    }
}

contract D is B {

}

//     A
//    /
//   B
//  / \
// C   D
