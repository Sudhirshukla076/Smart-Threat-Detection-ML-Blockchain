// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ThreatDetection {

    struct Threat {
        string data;
        uint timestamp;
    }

    Threat[] public threats;

    function addThreat(string memory _data) public {
        threats.push(Threat(_data, block.timestamp));
    }

    function getThreat(uint index) public view returns (string memory, uint) {
        return (threats[index].data, threats[index].timestamp);
    }

    function getTotalThreats() public view returns (uint) {
        return threats.length;
    }
}