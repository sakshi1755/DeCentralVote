// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract Vote {
    mapping(string => uint) public votes;

    function voteFor(string memory candidate) public {
        votes[candidate] += 1;
    }

    function getVotes(string memory candidate) public view returns (uint) {
        return votes[candidate];
    }
}
