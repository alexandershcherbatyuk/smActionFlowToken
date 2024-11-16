// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract smActionFlowMintableToken is ERC20, Ownable {
    constructor() ERC20("smActionFlowMintableToken", "SMAF") Ownable(msg.sender) {
        // The deployer of the contract becomes the initial owner
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }
}
