pragma solidity 0.4.21;

import 'zeppelin-solidity/contracts/token/ERC20/MintableToken.sol';


/**
 * @title HNX Token
 * @dev Defined the HNX Token as a mintable Token with Symbol - HNX and 18 Decimal places
 */
contract HNXToken is MintableToken {
    string public name = "HumanixR";
    string public symbol = "HNX";
    uint8 public decimals = 18;
}