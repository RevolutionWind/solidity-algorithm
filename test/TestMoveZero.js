const { expect } = require("chai");
describe("MoveZero", async function () {
  describe("condition1", function () {
    it("Should move zeros to the end", async function () {
      const MoveZero = await ethers.getContractFactory("MoveZero");
      const moveZero = await MoveZero.deploy();
      await moveZero.deployed();
      const arr = [1, 0, 2, 0, 3, 0, 4, 0, 5];
      const result = await moveZero.moveZero(arr);
      expect(result).to.deep.equal([1, 2, 3, 4, 5, 0, 0, 0, 0]);
    });
  });
});
