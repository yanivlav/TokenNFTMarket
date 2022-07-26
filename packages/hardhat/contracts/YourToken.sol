// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
// pragma solidity >=0.6.0 <0.8.0;



// Learn more about the ERC20 implementation 
// on OpenZeppelin docs: https://docs.openzeppelin.com/contracts/4.x/erc20
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract YourToken is ERC20 {
    constructor() ERC20("NFT Market", "YBC") {
        _mint(msg.sender, 10000 * 10 ** 18);
    }
}