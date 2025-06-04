// SPDX-License-Identifier: MIT

pragma solidity ^0.8.28;

contract PaimToken {
    string public name = "PaimToken";
    string public symbol = "APM";
    uint public totalSupply;
    address public owner;

    mapping(address => uint) public balanceOf;

    constructor(uint initialSupply) {
        totalSupply = initialSupply;
        balanceOf[msg.sender] = initialSupply;
    }

    function transfe(address toWhom, uint value) public returns (bool) {
        require(balanceOf[msg.sender] >= value, "Insufficient balance!");
        balanceOf[msg.sender] -= value;

        balanceOf[toWhom] += value;

        return true;
    }
}
