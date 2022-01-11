// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

import "@openzeppelin/contracts/token/ERC721/ERC721Full.sol";
import "@openzeppelin/contracts/drafts/Counters.sol";

contract NewNFT is NFTokenMetadata, Ownable {

    constructor(){
        nftName = "Synth NFT";
        nftSymbol = "SYN";
     }
    
    //_uriにIPFSのアドレスが入る
    function mint(address _to ,uint256 _tokenId, string calldata _uri) external onlyOwner{
        super._mint(_to, _tokenId);
        super._setTokenUri(_tokenId, _uri);
    }


}