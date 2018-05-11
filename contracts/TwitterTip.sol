pragma solidity ^0.4.23;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract TWTP is StandardToken {
    string public name = "Twitter Chip";
    string public symbol = "TWTP";
    uint8 public decimals = 18;

    uint256 initialSupply = 10000e18;
    
    mapping(string => address) addressDic;

    constructor() public {
        totalSupply_ = initialSupply;
        balances[msg.sender] = initialSupply;
    }
    
    function setAddress(string name) public {
        addressDic[name] = msg.sender;
    }
    
    function addressOf(string name) public view returns (address) {
        return addressDic[name];
    }
}

