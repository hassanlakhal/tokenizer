//SPDX-License-Identifier: MIT
pragma solidity ^0.8.34;
import  {SimpleStorage} from "./Hlakhal-24Token.sol";


contract AddFaboritNumber is SimpleStorage{
    function store(uint256 _number) override public {
        myFaboritNumber = _number;

    }
}

