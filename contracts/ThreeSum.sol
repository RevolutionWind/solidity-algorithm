// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/**
  给你一个整数数组 nums ，判断是否存在三元组 [nums[i], nums[j], nums[k]] 满足 i != j、i != k 且 j != k ，同时还满足 nums[i] + nums[j] + nums[k] == 0 。请

  你返回所有和为 0 且不重复的三元组。
    注意：答案中不可以包含重复的三元组。

示例 1：

输入：nums = [-1,0,1,2,-1,-4]
输出：[[-1,-1,2],[-1,0,1]]
解释：
nums[0] + nums[1] + nums[2] = (-1) + 0 + 1 = 0 。
nums[1] + nums[2] + nums[4] = 0 + 1 + (-1) = 0 。
nums[0] + nums[3] + nums[4] = (-1) + 2 + (-1) = 0 。
不同的三元组是 [-1,0,1] 和 [-1,-1,2] 。
注意，输出的顺序和三元组的顺序并不重要。

 */
contract ThreeSum {
    function threeSum(int256[] memory nums)
        public
        pure
        returns (int256[][] memory)
    {
        // 先排序，再使用二分法寻找两数之和
        uint256 len = nums.length;
        if (len < 3) {
            return new int256[][](0);
        }
        // 1. 排序
        quickSort(nums, 0, len - 1);
        // 2. 二分法寻找两数之和
        int256[][] memory result = new int256[][](0);
        for (uint256 i = 0; i < len - 2; i++) {
            // 去重
            if (i > 0 && nums[i] == nums[i - 1]) {
                continue;
            }
            for (uint256 j = i + 1; j < len - 1; j++) {
                if (j > i + 1 && nums[j] == nums[j - 1]) {
                    continue;
                }
                int256 target = 0 - nums[i] - nums[j];
                if (target < nums[j]) {
                    break;
                }
                uint256 left = j + 1;
                uint256 right = len - 1;
                while (left <= right) {
                    uint256 mid = (left + right) / 2;
                    if (nums[mid] == target) {
                        int256[] memory temp = new int256[](3);
                        temp[0] = nums[i];
                        temp[1] = nums[j];
                        temp[2] = nums[mid];
                        // 根据 length 递增
                        result[result.length] = temp;
                        break;
                    } else if (nums[mid] < target) {
                        left = mid + 1;
                    } else {
                        right = mid - 1;
                    }
                }
            }
        }

        // 3. 返回结果
        return result;
    }

    function quickSort(
        int256[] memory nums,
        uint256 left,
        uint256 right
    ) internal pure {
        if (left >= right) {
            return;
        }
        uint256 i = left;
        uint256 j = right;
        int256 pivot = nums[left];
        while (i < j) {
            while (i < j && nums[j] >= pivot) {
                j--;
            }
            while (i < j && nums[i] <= pivot) {
                i++;
            }
            if (i < j) {
                int256 temp = nums[i];
                nums[i] = nums[j];
                nums[j] = temp;
            }
        }
        nums[left] = nums[i];
        nums[i] = pivot;
        quickSort(nums, left, i - 1);
        quickSort(nums, i + 1, right);
    }
}
