pragma solidity ^0.4.23;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "openzeppelin-solidity/contracts/math/SafeMath.sol";

/// @title A contract to generate an example of ERC20 Token starting from ERC20 prototypes
/// @author Gianmarco Poggi
/// @dev implements SafeMath usage to prevent overflows in transactions
contract VulpemToken is ERC20{

    mapping (address => uint256) balance; //any address balance is initialized by default to 0
    mapping (address => mapping (address => uint256)) allowed;

    string public name;
    uint8 public decimals;
    string public symbol;
    string public version = "H0.1";

    uint256 public totalSupply;

    function vulpemToken() {
        balances[msg.sender] = 1000;
        totalSupply = 1000;
        name = “Vulpem Internship Token”;
        decimals = 6;
        symbol = "VIT";
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

    function balanceOf(address _who) public view returns(uint256 balance) {
        return balance[_who]; // No risk of NPE default balance is 0
    }

    function totalSupply()public view returns (uint256 totalSupply) {
        return totalSupply;
    }

    function approve(address _to, uint256 _value) public returns (bool) {
        allowed[msg.spender][_to] = _value;
        Approval(msg.sender,_to,_value);
    }

    function allowance(address _owner, address _spender) public view returns (uint256) {
       return allowed[_owner][_spender];
    }

    function transferFrom(address _from, address _to, uint256 _value) public returns (bool) {
        if(balance[_from] >= _value && allowed[_from][msg.sender] >= _value && _value > 0) {
            balance[_to] =+ _value;
            balance[_from] =+ _value;
            allowed[_from][msg.sender] =- _value;
            Transfer(_from, _to, _value);
            return true;
        } else {
            return false;
        }
    }



    event Approval(address indexed owner, address indexed spender, uint256 value);
    event Transfer(address indexed from, address indexed to, uint256 value);
}
