//SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";

contract Lak7alToken42 is ERC20, Ownable{
    constructor() 
    ERC20("lak7al42", "HS42") Ownable(msg.sender){
        _mint(msg.sender, 10000 * (10 ** decimals()));
    }
    
    function mint(address to, uint256 amount) OnlyOwner external {
        _mint(to, amount * (10 ** desimals()));
    }

    function burn(unit256 amount) external{
        _burn(msg.sender, amount);
    }
}