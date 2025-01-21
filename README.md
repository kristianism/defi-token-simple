## Simple ERC20 Token

Simple smart contract for a token with the basic functions for the most practical application.

### Imports:
- @openzeppelin/contracts/access/Ownable.sol
- @openzeppelin/contracts/token/ERC20/ERC20.sol

### Constructor Arguments:
- _name: The full name of the token
- _symbol: The short name for the token or the ticker
- _initialSupply: The number of tokens to be pre-minted or pre-created to the deployer address

### Functions:
- mint: Privileged function to create or mint an X amount of token/s to a specified address
- burn: External function to destroy an X amount of tokens from sender address
