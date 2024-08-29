// SPDX-License-Identifier: MIT

pragma solidity >=0.8.4;

contract Demo {

    address public owner;

    constructor(){
        owner == msg.sender;
    }

    uint256 coins = 0;

    function add() public {

        require(coins <= 3,"Too many coins!!!");
        coins ++;

    }

    modifier onlyOwner(){
        require(owner == msg.sender, "You are not the owner!!!");
        _;
    }

    function subtract() public onlyOwner{
        coins--;
    }
}