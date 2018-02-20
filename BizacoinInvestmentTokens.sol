pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract BizacoinInvestmentTokens is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function BizacoinInvestmentTokens(address _owner)  UpgradeableToken(_owner) {
    name = "BizacoinInvestmentTokens";
    symbol = "BZIT";
    totalSupply = 100000000;
    decimals = 0;

    balances[_owner] = totalSupply;
  }
}