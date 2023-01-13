const { expect } = require("chai");
describe.only("TwoSum", async function () {
  let twoSum = null;
  beforeEach(async () => {
    const TwoSum = await ethers.getContractFactory("TwoSum");
    twoSum = await TwoSum.deploy();
    await twoSum.deployed();
  });
  it("Should return the indices of the two numbers such that they add up to target", async function () {
    const nums = [2, 7, 11, 15];
    const target = 9;
    const result = await twoSum.twoSum(nums, target);
    expect(result).to.deep.equal([0, 1]) ||
      expect(result).to.deep.equal([1, 0]);
  });
});
