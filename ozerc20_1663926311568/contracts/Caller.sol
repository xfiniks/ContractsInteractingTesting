// SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.7.0 <0.9.0;

import "./RPS.sol";

contract Caller {

    RPS public rps;

    constructor(RPS addr) {
        rps = addr;
    }

    function startGame() public {
        rps.newGame();
    }

    function enterGame() public {
        rps.join();
    }

}