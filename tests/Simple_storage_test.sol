// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.8.2 <0.9.0;

import "remix_accounts.sol";
import "remix_tests.sol";
import "../contracts/Simple_storage.sol";

contract TestsSuite {
    SimpleStorage ss;

    // beforeEach works before running each test
    function beforeEach() public {
        ss = new SimpleStorage();
    }

    /// Test if initial value is set correctly
    function initialValueShouldBe_0() public returns (bool) {
        return Assert.equal(ss.get(), 0, "initial value is not correct");
    }

    /// Test if value is set as expected
    function valueIsSet_100() public returns (bool) {
        ss.set(100);
        return Assert.equal(ss.get(), 100, "value is not 100");
    }

    /// #sender: account-0
    function checkMsgSender() public returns (bool) {
        return Assert.equal(msg.sender, TestsAccounts.getAccount(0), "Invalid sender");
    }

    /// #value: 0
    function checkMsgValue() public payable returns (bool) {
        return Assert.equal(msg.value, 0, "Invalid value");
    }
}
