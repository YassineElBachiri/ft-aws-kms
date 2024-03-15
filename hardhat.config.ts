import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox-viem";

const config: HardhatUserConfig = {
 solidity: "0.8.24",
 networks: {
    // sepolia: {
    //   url: "https://sepolia.optimism.io", // The RPC URL for the Sepolia network
    //   accounts: [
    //     // Your private key here
    //     "YOUR_PRIVATE_KEY",
    //   ],
    //   // Add any other network-specific configurations here
    // },
 },
};

export default config;
export const plugins = [
 "@nomicfoundation/hardhat-toolbox-viem",
];