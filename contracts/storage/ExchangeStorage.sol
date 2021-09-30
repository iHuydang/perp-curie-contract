// SPDX-License-Identifier: GPL-2.0-or-later
pragma solidity 0.7.6;

import { Funding } from "../lib/Funding.sol";

abstract contract ExchangeStorageV1 {
    address public orderBook;
    address public accountBalance;
    address public clearingHouseConfig;
    address public insuranceFund;

    mapping(address => int24) internal _lastUpdatedTickMap;
    mapping(address => uint256) internal _firstTradedTimestampMap;
    mapping(address => uint256) internal _lastSettledTimestampMap;
    mapping(address => Funding.Growth) internal _globalFundingGrowthX96Map;

    // key: base token
    // value: a threshold to limit the price impact per block when reducing or closing the position
    mapping(address => uint24) internal _maxTickCrossedWithinBlockMap;

    // first key: trader, second key: baseToken
    // value: the last timestamp when a trader exceeds price limit when closing a position/being liquidated
    mapping(address => mapping(address => uint256)) internal _lastOverPriceLimitTimestampMap;
}
