// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

contract SimpleStorage {
    uint public storedData;

    constructor() {
        storedData = 0;
    }

    function set(uint x) public {
        storedData = x;
    }

    function get() public view returns (uint retVal) {
        return storedData;
    }
}