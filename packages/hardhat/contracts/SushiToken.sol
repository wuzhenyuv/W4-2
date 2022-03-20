//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SushiToken is ERC20("SushiToken", "SUSHI"),Ownable {
  constructor(uint256 initialSupply) {
    _mint(msg.sender, initialSupply);
  }

   function mint(address _to, uint256 _amount) public onlyOwner {
    _mint(_to, _amount);
  }
}