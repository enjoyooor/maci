// SPDX-License-Identifier: MIT
pragma solidity ^0.7.2;

import { ERC721 } from "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract SignUpToken is ERC721, Ownable {
    constructor() ERC721("SignUpToken", "SignUpToken") { }

    // Gives an ERC721 token to an address
    function giveToken(address to) public onlyOwner {
        _mint(to, curTokenId);
    }
}
