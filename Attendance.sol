// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Attendance {

    struct Record {
        uint studentId;
        uint timestamp;
    }

    Record[] public records;

    function markAttendance(uint _studentId) public {
        records.push(Record(_studentId, block.timestamp));
    }

    function getTotalAttendance() public view returns (uint) {
        return records.length;
    }
}