//SPDX-License-Identifier: MIT
pragma  solidity ^0.8.34;
// import "forge-std/console.sol";

contract SimpleStorage{
    uint256 myFaboritNumber; 
    function store(uint256 _number) virtual  public {
        myFaboritNumber = _number;
    }
}




