// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.26;

import { Script } from "forge-std/Script.sol";
import { Foo } from "../src/Foo.sol";

/// @dev See the Solidity Scripting tutorial: https://book.getfoundry.sh/tutorials/solidity-scripting
contract FooScript is Script {
    Foo internal foo;

    function run() public {
        vm.startBroadcast();
        foo = new Foo();
        vm.stopBroadcast();
    }
}
