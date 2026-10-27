//SPDX-License-Identifier: MIT
pragma  solidity ^0.8.34;

contract SimpleStorge{
    uint256 myFaboritNumber; 
    function store(uint256 _number) public {
        myFaboritNumber = _number;
    }
}




