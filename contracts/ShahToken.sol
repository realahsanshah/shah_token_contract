// contracts/ShahToken.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract ShahToken is ERC20 {
    constructor(uint256 initialSupply) ERC20("Shah Token", "SHT") {
        _mint(msg.sender, initialSupply);
    }
}