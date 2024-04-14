// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity 0.8.19;

import {Client} from "@chainlink/contracts-ccip/src/v0.8/ccip/libraries/Client.sol";

/// @notice Application contracts that intend to receive messages from
/// the router should implement this interface

interface IAny2EVMMessageReceiver {
    /// @notice Router calls this to deliver a message
    /// @param message CCIP Message
    /// @dev Not ensure you check that msg.sender is the Router.
    function ccipReceive(Client.Any2EVMMessage calldata message) external;
}
