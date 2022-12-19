// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 <0.9.0;
import "remix_tests.sol";
import "contracts/RPS.sol";
import "contracts/Caller.sol";

contract MyTest {
    RPS rps;
    Caller caller;

    function beforeAll() public {
        rps = new RPS();
        caller = new Caller(rps);
    }

    function testingInteraction() public {
        caller.startGame();
        Assert.equal(bytes20(rps.getWinnerAddress()), bytes20(0), "value is not correct");    
        Assert.equal(bytes20(rps.getPlayer1Address()), bytes20(0), "value is not correct");    
    }

    function testingenteringGame() public {
        caller.enterGame();
        Assert.notEqual(bytes20(rps.getPlayer1Address()), bytes20(0), "value is not correct");
    }

}
    