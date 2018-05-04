pragma solidity ^0.4.23;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/math/SafeMath.sol";

/// @title A contract to generate an example of ERC20 Token starting from ERC20 prototypes
/// @author Gianmarco Poggi
/// @dev implements SafeMath usage to prevent overflows in transactions
contract VulpemToken is ERC20{

    using SafeMath for uint256;
    mapping (address => uint256) balance; //any address balance is initialized by default to 0
    uint256 public totalSupply;

    function vulpemToken() {
      /// TODO init token infos
    }

    function transfer(address _to, uint _value) returns(bool success) {
        if(balance[msg.sender] >= _value && _value  > 0) {
            balance[msg.sender] -= _value;
            balance[_to] += _value;
            Transfer(msg.sender, _to, _value);
            return true;
        } else {
            return false;
        }
    }

    function balanceOf(address who) external view returns(uint256 balance) {
        return balance[who]; //no risk of NPE default balance is 0
    }
    /// TODO function to buy tokens paying eth

    function totalSupply()

    function totalSupply() public view returns (uint256);
    function balanceOf(address who) public view returns (uint256);
    function allowance(address owner, address spender) public view returns (uint256);
    function transferFrom(address from, address to, uint256 value) public returns (bool);
    function approve(address spender, uint256 value) public returns (bool);
    event Approval(address indexed owner, address indexed spender, uint256 value);
    event Transfer(address indexed from, address indexed to, uint256 value);
}
