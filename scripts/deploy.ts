
import hre from "hardhat";

async function main(): Promise<string> {
    console.log("Deploying SimpleBank contract");

    // Assuming Viem provides a similar interface for deploying contracts
    const simpleBank = await hre.viem.deployContract("SimpleBank", []);
    console.log(`SimpleBank deployed: ${simpleBank.address}`);

    return simpleBank.address;
}



main()
    .then(() => process.exit(0))
    .catch((error) => {
        console.error(error);
        process.exit(1);
    });