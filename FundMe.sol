// SPDX-License-Identifier: MIT

pragma solidity >=0.6.6 <0.9.0;

contract FundMe {
    
    // Accept some type of payment

    mapping(address => uint256) public addressToAmountFunded;

    // A payable function can be used to pay for things
    // Let's keep track of every address who sent us money
    function fund() public payable {
        // sender = sender of function call
        // value = how much they sent
        addressToAmountFunded[msg.sender] += msg.value;
    }
}

