// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SortUtil {
    function qSort(int256[] memory arr) public pure returns (int256[] memory) {
        quickSort(arr, 0, int256(arr.length - 1));
        return arr;
    }

    function quickSort(
        int256[] memory arr,
        int256 left,
        int256 right
    ) internal pure {
        if (left >= right) {
            return;
        }
        int256 pivot = getPivot(arr, left, right);
        quickSort(arr, left, pivot - 1);
        quickSort(arr, pivot + 1, right);
    }

    function getPivot(
        int256[] memory arr,
        int256 begin,
        int256 end
    ) internal pure returns (int256) {
        uint256 pivot = uint256(begin);
        for (uint256 i = uint256(begin); i <= uint256(end); i++) {
            if (arr[i] < arr[uint256(end)]) {
                // exchange
                (arr[i], arr[pivot]) = (arr[pivot], arr[i]);
                pivot++;
            }
        }
        (arr[pivot], arr[uint256(end)]) = (arr[uint256(end)], arr[pivot]);
        return int256(pivot);
    }
}
