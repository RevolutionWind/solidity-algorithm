const { expect } = require("chai");
describe("MergedTwoSortedArray", async function () {
  describe("condition1", function () {
    it("Should be sorted after excute", async function () {
      const MergeTwoSortedArray = await ethers.getContractFactory(
        "MergeTwoSortedArray"
      );
      const mergeTwoSortedArray = await MergeTwoSortedArray.deploy();
      await mergeTwoSortedArray.deployed();
      const arr1 = [1, 3, 5, 7, 9];
      const arr2 = [2, 4, 6, 8, 10];
      const result = await mergeTwoSortedArray.merge(arr1, arr2);
      expect(result).to.deep.equal([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
    });
  });
});
