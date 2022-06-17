// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

interface IOracle {
    function request(uint256 _requestId, bytes calldata _input) external;
}
