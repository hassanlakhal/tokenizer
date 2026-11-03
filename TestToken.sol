//SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

contract TestToken is ERC20{
    constructor(string memory _name, string memory _symbol) 
    ERC20(_name, _symbol){
        
    }
    function mint(address to, uint256 amount) public {
        _mint(to, amount);
    }
}