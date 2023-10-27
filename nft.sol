// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import { ERC721 } from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import { Counters } from "@openzeppelin/contracts/utils/Counters.sol";

contract YeuolyNFT is ERC721("YeuolyNFT", "YNFT") {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIdCounter;

    error MathNonConformingError(address account, uint256 key);

    modifier _requireLessThan100() {
        require(_tokenIdCounter.current() < 100);
        _;
    }

    function mint(uint256 key) public _requireLessThan100 returns(uint256) {
        if((key * 20 - 4) % 7 != 0) {
            revert MathNonConformingError(msg.sender, key);
        }
        _tokenIdCounter.increment();
        _safeMint(msg.sender, _tokenIdCounter.current());
        return _tokenIdCounter.current();
    }
}