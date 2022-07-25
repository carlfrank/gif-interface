// SPDX-License-Identifier: Apache-2.0
pragma solidity ^0.8.0;

import "./IComponent.sol";

interface IProduct is IComponent {

    event LogProductCreated (address productAddress);
    event LogProductProposed (uint256 id);
    event LogProductApproved (uint256 id);
    event LogProductDeclined (uint256 id);

    function getToken() external view returns(address token);
    function getPolicyFlow() external view returns(address policyFlow);
    function getRiskpoolId() external view returns(uint256 riskpoolId);

    function getApplicationDataStructure() external view returns(string memory dataStructure);
    function getClaimDataStructure() external view returns(string memory dataStructure);
    function getPayoutDataStructure() external view returns(string memory dataStructure);

    function riskPoolCapacityCallback(uint256 capacity) external;
}
