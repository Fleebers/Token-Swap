pragma solidity ^0.8.0;

import "@openzeppelin/contracts/interfaces/IERC20.sol";
import "@openzeppelin/contracts/utils/math/SafeMath.sol";
import "@openzeppelin/contracts/utils/Address.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/utils/Context";

contract TokenSwap is IERC20, Context, Ownable {

	using SafeMath for uint256;
	using Address for address;

	mapping (address => bool) private _swapped;
	mapping (address => mapping (address => uint256)) private _qSwapped;

	event Swapped(address indexed _swapped, uint _qSwapped);

	constructor(
		OldToken address,
		NewToken address,
		) public {
		OldToken = _OldToken;
		NewToken = _NewToken;
		Owner = msg.sender;
	}

	function TakeOldToken(_OldToken, uint256 _amount) public returns (bool) {
	}



}