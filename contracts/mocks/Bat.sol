// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

import '@openzeppelin/contracts/token/ERC20/ERC20.sol';

contract Bat is ERC20 {
    constructor() ERC20('Bat', 'Basic Attention Token') {
        _mint(msg.sender, 1000000 * (10 ** uint256(decimals())));
    }

    function faucet(address to, uint amount) external {
        _mint(to, amount);
    }

}
