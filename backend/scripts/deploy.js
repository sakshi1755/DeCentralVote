async function main() {
    const Vote = await ethers.getContractFactory("Vote");
    const vote = await Vote.deploy();
    await vote.deployed();
    console.log("Contract deployed to:", vote.address);
  }
  
  main().catch((error) => {
    console.error(error);
    process.exitCode = 1;
  });
  