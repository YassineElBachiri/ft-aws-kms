// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0 <0.9.0;

contract SimpleBank {
    // Mapping to store the balance of each account
    mapping(address => uint) private balances;

    // Event to log deposit transactions
    event Deposit(address indexed account, uint amount);

    // Event to log withdrawal transactions
    event Withdrawal(address indexed account, uint amount);

    // Event to log transfer transactions
    event Transfer(address indexed from, address indexed to, uint amount);

    // Function to deposit Ether into the contract
    function deposit() public payable {
        require(msg.value > 0, "Deposit amount must be greater than 0");
        balances[msg.sender] += msg.value;
        emit Deposit(msg.sender, msg.value);
    }

    // Function to withdraw Ether from the contract
    function withdraw(uint amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        payable(msg.sender).transfer(amount);
        emit Withdrawal(msg.sender, amount);
    }

    // Function to transfer Ether between accounts
    function transfer(address to, uint amount) public {
        require(balances[msg.sender] >= amount, "Insufficient balance");
        balances[msg.sender] -= amount;
        balances[to] += amount;
        emit Transfer(msg.sender, to, amount);
    }

    // Function to check the balance of an account
    function getBalance() public view returns (uint) {
        return balances[msg.sender];
    }
}