const { expect } = require("chai");
describe("MoveZero", async function () {
  let moveZero = null;
  beforeEach(async () => {
    const MoveZero = await ethers.getContractFactory("MoveZero");
    moveZero = await MoveZero.deploy();
    await moveZero.deployed();
  });
  it("Should move zeros to the end", async function () {
    const arr = [1, 0, 2, 0, 3, 0, 4, 0, 5];
    const result = await moveZero.moveZero(arr);
    expect(result).to.deep.equal([1, 2, 3, 4, 5, 0, 0, 0, 0]);
  });
});
