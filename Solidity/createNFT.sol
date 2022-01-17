// SPDX-License-Identifier: MIT
pragma solidity 0.8.7;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/ERC721.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/Counters.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/access/Ownable.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC721/extensions/ERC721URIStorage.sol";

contract BirthdayCard is ERC721URIStorage, Ownable {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;

    constructor() ERC721("MyNFT", "NFT") {
    }
    
    function mintBirthCard (address _to, string memory tokenURI) public returns (uint256) {
        _tokenIds.increment();

        uint256 newCardId = _tokenIds.current();
        _mint(_to, newCardId);
        _setTokenURI(newCardId, tokenURI);

        return newCardId;
    }

    // バースデーカードの数を表示
    function getBirthdayCard (address _owner) public view returns (uint256[] memory) {

        uint256 ownersNfts = balanceOf(_owner);
        uint256 latestId = _tokenIds.current();

        //TokenIdを入れる配列
        uint256[] memory all_token = new uint256[](ownersNfts);

        uint num = 0;

        for (uint i = 1; i <= latestId; i++) {
            
            if(ownerOf(i)== _owner){
                all_token[num] = i;
                num++;
            }
        }

        return all_token;
    }

}