// SPDX-License-Identifier: MIT

pragma solidity >=0.6.0 <0.9.0;

import "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public simpleStorageArray;

    function createSimpleStorageContract() public {
        SimpleStorage s = new SimpleStorage();
        simpleStorageArray.push(s);
    }

    function sfStore(uint256 _index, uint256 _number)
        public
    {
        // address
        // ABI

        SimpleStorage s = SimpleStorage(
            address(simpleStorageArray[_index])
        );
        s.store(_number);
    }

    function sfGet(uint256 _index) public view returns (uint256) {
        SimpleStorage s = SimpleStorage(
            address(simpleStorageArray[_index])
        );

        return s.retrieve();
    }
}
