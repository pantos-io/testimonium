pragma solidity ^0.5.10;

import "./Testimonium.sol";

contract TestimoniumTestContract is Testimonium {
    constructor(bytes memory _rlpHeader, uint totalDifficulty, address _ethashContractAddr) Testimonium(_rlpHeader, totalDifficulty, _ethashContractAddr) public {}

    function getBlockMetaInfo(bytes32 blockHash) public view returns (
        bytes32[] memory successors, uint orderedIndex, uint iterableIndex, bytes32 latestFork, uint lockedUntil,
        address submitter
    ) {
        return super.getHeaderMetaInfo(blockHash);
    }

    function getLockedUntilOfBlock(bytes32 blockHash) public view returns (uint) {
        return super.getLockedUntil(blockHash);
    }

    function getNumberOfForks() public view returns (uint) {
        return super.getNoOfForks();
    }

    function getEndpoint(uint index) public view returns (bytes32) {
        return super.getBlockHashOfEndpoint(index);
    }

    function isBlockUnlocked(bytes32 blockHash) public view returns (bool) {
        return super.isUnlocked(blockHash);
    }

}
