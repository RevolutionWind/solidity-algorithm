// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/**
给定一个数组 nums，编写一个函数将所有 0 移动到数组的末尾，同时保持非零元素的相对顺序。

请注意 ，必须在不复制数组的情况下原地对数组进行操作。

例子1：
输入: nums = [0,1,0,3,12]
输出: [1,3,12,0,0]
 */
contract MoveZero {
    function moveZero(int256[] memory nums)
        public
        pure
        returns (int256[] memory)
    {
        uint256 len = nums.length;
        if (len < 2) {
            return nums;
        }
        uint256 j = 0;
        for (uint256 i = 0; i < len; i++) {
            if (nums[i] != 0) {
                // swap i and j
                int256 temp = nums[i];
                nums[i] = nums[j];
                nums[j++] = temp;
            }
        }
        return nums;
    }
}
