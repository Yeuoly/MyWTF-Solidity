// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract YeuolyContract {
    // 字符串
    string public globalIdentifier = "YeuolyContract";

    // 数字
    uint128 public globalIdentifierNumber = 114514;

    int256 public magicNumber = 0x98765421;

    // 一个以太坊地址，注意，这个地址必须是合法的，需要通过校验和
    address public userAddress = 0x7A58c0Be72BE218B41C608b7Fe7C5bB630736C71;

    // 可以将一个普通地址转化为payable地址，payable的地址可以接收转账
    address payable public userPayableAddress = payable(userAddress);

    // 也可以取地址内的余额
    uint256 public userBlance = userAddress.balance;

    // 除了是字符串也可以是字节数组
    bytes32 public unusefulBytes = "yahaha!";

    // 也可以是单个字节
    bytes1 public unusefulByte = unusefulBytes[0];

    // 还可以来枚举
    enum KawaiiSet { Kawaii, Hentai, Baka }

    KawaiiSet public isKawaii = KawaiiSet.Baka;
}