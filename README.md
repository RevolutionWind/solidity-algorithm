# Algorithm practicing by using solidity

> Someone told me before, "The quickest way to learn a program language is doing algorithm practicing by using it."

So here it is, I learn solidity by using it to solve algorithm questions. Unit test by **hardhat**.
This project will use several common algorithms and data structures so that we can work with them in practice.

Run all test:

```shell
npx hardhat test
```

Run choosen test:

Add `.only` after ./test/Test\*.js's describe. For example, `describe("this is a test", function)` to `describe.only("this is a test", function)`.
