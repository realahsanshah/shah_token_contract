import hre from 'hardhat';
const main = async ()=>{
    const ShahToken = await hre.ethers.getContractFactory('ShahToken');

    const shahToken = await ShahToken.deploy(1000);

    await shahToken.deployed();

    console.log("Shah Token deployed to:", shahToken.address);
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });