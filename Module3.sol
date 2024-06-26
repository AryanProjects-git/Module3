// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// Contract WHO inherits all the properties of ERC20 
contract WHO is ERC20 {
    address public chief;

    // Token name is HealthToken and symbol is HT
    constructor(uint256 initialSupply) ERC20("HealthToken", "HT") {
        _mint(msg.sender, initialSupply);
        chief = msg.sender;
    }

    modifier onlychief() {
        require(msg.sender == chief, "You are not the WHO chief");
        _;
    }

    // Only WHO chief can mint tokens at receiver address
    function mint(address receiver, uint256 amount) external onlychief {
        _mint(receiver, amount);
    }

    // take 2 parameter from which account and how many token
    function burn(address from, uint256 amount) external {
        _burn(from, amount);
    }

    // takes 2 parameter receiver address and amount
    function transfer(address receiver, uint256 amount) public override returns (bool) {
        _transfer(msg.sender, receiver, amount);
        return true;
    }
}
