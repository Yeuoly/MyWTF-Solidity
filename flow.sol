// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract FastSort {
    function sort(uint[] memory arr, uint left, uint right) internal pure {
        if(left >= right) {
            return;
        }
        uint std = arr[left];
        uint start = left;
        uint end = right;
        while(start < end) {
            while(arr[end] > std && start < end) end--;
            if (start < end) {
                arr[start++] = arr[end];
            }
            while(arr[start] < std && start < end) start++;
            if (start < end) {
                arr[end--] = arr[start];
            }
        }
        arr[start] = std;
        sort(arr, left, start);
        sort(arr, start + 1, right);
    }

    function fastSort() public pure returns(uint[] memory) {
        uint[] memory arr = new uint[](10);
        arr[0] = 10;
        arr[1] = 1;
        arr[2] = 8;
        arr[3] = 7;
        arr[4] = 6;
        arr[5] = 5;
        arr[6] = 9;
        arr[7] = 2;
        arr[8] = 3;
        arr[9] = 4;

        sort(arr, 0, 9);

        return arr;
    }
}