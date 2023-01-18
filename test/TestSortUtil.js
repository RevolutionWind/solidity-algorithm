const { expect } = require("chai");
describe.only("Sort", async function () {
  let sortUtil = null;
  beforeEach(async () => {
    const SortUtil = await ethers.getContractFactory("SortUtil");
    sortUtil = await SortUtil.deploy();
    await sortUtil.deployed();
  });
  it("quick sort", async function () {
    const arr = [2, 3, 1, 5, 4, 0, -1];
    const result = await sortUtil.qSort(arr);
    expect(result).to.deep.equal([-1, 0, 1, 2, 3, 4, 5]);
  });
});
