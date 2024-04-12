// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.19;

import {Client} from "@chainlink/contracts-ccip/src/v0.8/ccip/libraries/Client.sol";

interface IRouterClient {
    /// @notice Request a CCIP message to be sent to the destinatin chain
    /// @param destinationChainSelector The destination chain selector
    /// @param message The cross chain CCIP message including data and/or tokens
    /// @return messageId The message ID
    function ccipSend(uint64 destinationChainSelector, Client.EVM2AnyMessage calldata message)
        external
        payable
        returns (bytes32 messageId);
}
