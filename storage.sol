// SPDX-License-Identifier: MIT 

pragma solidity >= 0.8.4; 

contract simple_storage {

    uint256 public singleNumber = 0; 

    event StoreNumber(uint256 indexed numberId);

    function NumberStorage(uint _number) external {
        require(_number >= 0, "Number should be zero or positive");

        singleNumber = _number; 

        emit StoreNumber(singleNumber);



    }

    function updateNumber(uint256 _newNumber) external {
        require(_newNumber >= 0, "Number should be zero or positive");

        singleNumber = _newNumber;

        emit StoreNumber(singleNumber);
        
    }

    function getNumber() external view returns (uint256) {
        return singleNumber;
    }
}