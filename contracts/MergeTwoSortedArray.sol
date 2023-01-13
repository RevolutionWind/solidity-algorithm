// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

/**
 给你两个按 非递减顺序 排列的整数数组 nums1 和 nums2，分别表示 nums1 和 nums2 中的元素数目。

示例 1：

输入：nums1 = [1,2,3], nums2 = [2,5,6]
输出：[1,2,2,3,5,6]
解释：需要合并 [1,2,3] 和 [2,5,6] 。
 */
contract MergeTwoSortedArray {
    function merge(int256[] memory nums1, int256[] memory nums2)
        public
        pure
        returns (int256[] memory)
    {
        uint256 len1 = nums1.length;
        uint256 len2 = nums2.length;
        if (len1 == 0 && len2 == 0) {
            return new int256[](0);
        }
        uint256 i = 0;
        uint256 j = 0;
        uint256 k = 0;
        int256[] memory result = new int256[](len1 + len2);
        while (i < len1 && j < len2) {
            result[k++] = nums1[i] < nums2[j] ? nums1[i++] : nums2[j++];
        }
        while (i < len1) {
            result[k++] = nums1[i++];
        }
        while (j < len2) {
            result[k++] = nums2[j++];
        }
        return result;
    }
}
