//SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

// This is a simple ownable token contract that has the basic mint and burn function.
contract TokenSimple is ERC20, Ownable {
    
    // Constructor arguments for the TokenSimple contract.
    // Ability to determine the name of your token
    // Ability to determine an X amount of token to create or mint to the deployer's address.
    constructor (

        string memory _name, // Full name of the token
        string memory _symbol, // Short name of the token
        uint256 _initialSupply // Number of tokens to be minted. Expressed in wei.

    ) ERC20(_name, _symbol) Ownable (msg.sender) {

        _mint(msg.sender, _initialSupply);
    }
    
    // External privileged function to create or mint an X amount of tokens to a specified address.
    function mint(address _to, uint256 _amount) external onlyOwner {
        _mint(_to, _amount);
    }

    // External function to burn or destroy an X amount of tokens.
    function burn(uint256 _amount) external {
        _burn(msg.sender, _amount);
    }

}
