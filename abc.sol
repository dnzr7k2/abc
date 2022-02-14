//SPDX-License-Identifier:UNLICENSED
pragma solidity ^0.6.0;

contract abc{
    mapping(address => bool) public isAdmin;
    address public ownerAddress;

    modifier adminOnly{
        require(abc.isAdmin[msg.sender]);
        _;
    }

    modifier ownerOnly{
        require(msg.sender==abc.ownerAddress);
        _;
    }

    function setOwner(address _owner) public { // call in constructor
        isAdmin[msg.sender]=true;
        ownerAddress=_owner;
        isAdmin[abc.ownerAddress]=true;
    }

}
