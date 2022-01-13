// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

import "@openzeppelin/contracts/token/ERC721/ERC721Full.sol";
import "@openzeppelin/contracts/drafts/Counters.sol";

contract NewBirthdayCard is NFTokenMetadata, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721Full("GameItem", "ITM") public {
    }
    
    function mintBirthCard (address _to, string memory tokenURI) public returns (uint256) {
        _tokenIds.increment();

        uint256 newCardId = _tokenIds.current();
        _mint(_to, newCardId);
        _setTokenURI(newCardId, tokenURI);

        return newCardId;
    }

    // バースデーカードの数を表示
    function getBirthdayCard (address _owner) public view returns (uint256) {
        /**
        balanceOf でその人が持ってるNFTの数がわかる？
         */
        uint256 ownersNfts = balanceOf(_owner);
        uint256 latestId = _tokenIds.current();

        //TokenIdを入れる配列

        for (uint i = 1; i < latestId; i++) {
            if()

        }
    }
    /*
    //_uriにIPFSのアドレスが入る
    function mint(address _to ,uint256 _tokenId, string calldata _uri) external onlyOwner{
        super._mint(_to, _tokenId);
        super._setTokenUri(_tokenId, _uri);
    }
    */


}