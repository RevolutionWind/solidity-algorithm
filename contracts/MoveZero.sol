// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract MoveZero {
    function moveZero(uint256[] memory nums)
        public
        pure
        returns (uint256[] memory)
    {
        uint256 len = nums.length;
        if (len < 2) {
            return nums;
        }
        uint256 j = 0;
        for (uint256 i = 0; i < len; i++) {
            if (nums[i] != 0) {
                // swap i and j
                uint256 temp = nums[i];
                nums[i] = nums[j];
                nums[j++] = temp;
            }
        }
        return nums;
    }
}
