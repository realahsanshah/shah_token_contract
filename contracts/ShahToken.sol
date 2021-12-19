// contracts/ShahToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "hardhat/console.sol";


contract ShahToken is ERC20 {
    address public owner;
    constructor(uint256 initialSupply) ERC20("Shah Token", "SHT") {
        owner = msg.sender;
        uint256 tokens = initialSupply * 10 **18;
        _mint(msg.sender, tokens);
        console.log('initialSupply',initialSupply);
    }

    modifier OnlyOwner{
        require(msg.sender==owner,"Only owner can do this transaction");
        _;
    }

    function mintToken(uint256 tokens) public OnlyOwner {
        _mint(msg.sender,tokens);
    }

}