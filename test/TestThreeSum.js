describe.only("ThreeSum", async function () {
  let threeSum = null;
  beforeEach(async () => {
    const ThreeSum = await ethers.getContractFactory("ThreeSum");
    threeSum = await ThreeSum.deploy();
    await threeSum.deployed();
  });
  it("Should return the indices of the three numbers such that they add up to target", async function () {
    const nums = [-1, 0, 1, 2, -1, -4];
    const result = await threeSum.threeSum(nums);
    console.log("result= " + result);
  });
});
