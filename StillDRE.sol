// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract StillDRE is ERC20, ERC20Burnable, Ownable {
    uint256 private constant TOTAL_SUPPLY = 1_000_000_000 * 10**18; // 1 Billion Tokens

    constructor(address initialOwner) 
        ERC20("Still D.R.E.", "STILLDRE") 
        Ownable(initialOwner) 
    {
        _mint(initialOwner, TOTAL_SUPPLY);
    }
}
