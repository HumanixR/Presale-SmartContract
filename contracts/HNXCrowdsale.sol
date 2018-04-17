pragma solidity 0.4.21;

import './HNXToken.sol';
import 'zeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol';
import 'zeppelin-solidity/contracts/crowdsale/validation/CappedCrowdsale.sol';
import 'zeppelin-solidity/contracts/crowdsale/distribution/RefundableCrowdsale.sol';


/**
 * @title HNXCrowdalse
 * @dev HNXCrowdsale corresponds to the PreSale for HNXToken.
 * It is cappedCrowdsale and Refundable if the target is not met.
 */
contract HNXCrowdSale is CappedCrowdsale, RefundableCrowdsale, MintedCrowdsale {
    function HNXCrowdSale(uint256 _openingTime, uint256 _closingTime, uint256 _rate,
        address _wallet, uint256 _cap, MintableToken _token, uint256 _goal) public
    Crowdsale(_rate, _wallet, _token)
    CappedCrowdsale(_cap)
    TimedCrowdsale(_openingTime, _closingTime)
    RefundableCrowdsale(_goal)
    {
        require(_goal <= _cap);
    }
}
