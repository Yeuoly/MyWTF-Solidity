// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract FunctionContract {
    uint256 public _number = 0;

    function utilsAddNumber(uint256 number, uint256 addition) internal pure returns (uint256 num_number) {
        num_number = number + addition;
    }

    function addNumber() internal {
        _number = _number + 1;
    }

    function costNumber() internal {
        _number = _number - 1;
    }

    function setNumber(uint256 number) internal {
        _number = number;
    }

    function getNumber() internal view returns (uint256 num_number) {
        num_number = _number;
    }

    function GetNumber() external view returns (uint256 new_number) {
        new_number = getNumber();
    }

    function CostNumber() external {
        costNumber();
    }

    function BuyNumber(uint256 count) external payable returns (uint256 balance) {
        setNumber(utilsAddNumber(_number, count));
        balance = utilsAddNumber(0, address(this).balance);
    }

    function testReturn() public pure returns (uint256) {
        return 1;
    }

    function testMultipleReturn() public pure returns(uint256, uint256[3] memory, string memory) {
        return (2, [uint256(2),2,2], "ww");
    }

    function test() public pure {
        uint256 a;
        uint256[3] memory b;
        string memory c;
        (a, b, c) = testMultipleReturn();
    }
}