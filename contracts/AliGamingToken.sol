// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract AliGamingToken is ERC20 {
    uint8 decimalDenomination;
    constructor(string memory _name, string memory _symbol, uint8 _decimalDenomination, uint _initialSupply) 
    ERC20(_name, _symbol) {
        decimalDenomination = _decimalDenomination;
        _mint(msg.sender, _initialSupply);
    }

    function decimals() public view override returns(uint8) {
        return decimalDenomination;
    }
}