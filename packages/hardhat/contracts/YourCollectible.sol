//SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "./YourToken.sol";
import "hardhat/console.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/IERC721Enumerable.sol";


contract YourCollectible is ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    YourToken yourToken;

  constructor(address tokenAddress, bytes32[] memory assetsForSale)
        public
        ERC721("YourCollectible", "YCB")
    {
        _baseURI();
        yourToken = YourToken(tokenAddress);
        for (uint256 i = 0; i < assetsForSale.length; i++) {
            forSale[assetsForSale[i]] = true;
        }
    }

    function _baseURI() internal pure override returns (string memory) {
     return "https://ipfs.io/ipfs/";
    }
	
    //this marks an item in IPFS as "forsale"
    mapping (bytes32 => bool) public forSale;

    //this lets you look up a token by the uri (assuming there is only one of each uri for now)
    mapping (bytes32 => uint256) public uriToTokenId;

    function mintItem(string memory tokenURI) public returns (uint256)
    {
        bytes32 uriHash = keccak256(abi.encodePacked(tokenURI));

        //make sure they are only minting something that is marked "forsale"
        require(forSale[uriHash],"NOT FOR SALE");
        require(yourToken.balanceOf(msg.sender)>0, "Insufficient token balance");
        // yourToken.approve(address(this), 1000000000000000000);
	      yourToken.transferFrom(msg.sender,address(this),1 * 10 ** 18);
	      // yourToken.transfer(address(this),1000000000000000000);

        forSale[uriHash]=false;


        uint256 newItemId = _tokenIds.current();
        _mint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);

        uriToTokenId[uriHash] = newItemId;

        _tokenIds.increment();

        return newItemId;
    }
}
