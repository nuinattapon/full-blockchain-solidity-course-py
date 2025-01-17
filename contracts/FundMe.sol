// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

contract Fundme {
    mapping(address => uint256) public addressToAmountFunded;

    function fund() public payable {
        addressToAmountFunded[msg.sender] += msg.value;
    }
}
