// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract plsbuff is ERC721URIStorage {
    uint256 tokenId = 1;

    constructor() ERC721("plsbuff", "LTG") {}

    function mint() external {
        _safeMint(msg.sender, tokenId);
        _setTokenURI(
            tokenId,
            "https://gist.githubusercontent.com/Fuz7/0e06c875aedb9e53a28f3ebf932a24d0/raw/1deaeac881a93571f7bff05359e9855744d6e8bf/metadata.json"
        );
        tokenId++;
    }
}