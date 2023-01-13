const { expect } = require("chai");
describe("MergedTwoSortedArray", async function () {
  let mergeTwoSortedArray = null;
  beforeEach(async () => {
    const MergeTwoSortedArray = await ethers.getContractFactory(
      "MergeTwoSortedArray"
    );
    mergeTwoSortedArray = await MergeTwoSortedArray.deploy();
    await mergeTwoSortedArray.deployed();
  });
  it("Should be sorted after excute", async function () {
    const arr1 = [1, 3, 5, 7, 9];
    const arr2 = [2, 4, 6, 8, 10];
    const result = await mergeTwoSortedArray.merge(arr1, arr2);
    expect(result).to.deep.equal([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]);
  });
});
