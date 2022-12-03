pragma solidity ^0.6.2;
import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "./IExerciceSolution.sol";

contract ExerciceSolution is ERC20, IExerciceSolution
{

  constructor() public ERC20("AntoineS", "pdE1B") {
        uint _supply = 767416516000000000000000000;
        _mint(msg.sender, _supply);
        //WhiteList.push(address(0x7C5629d850eCD1E640b1572bC0d4ac5210b38FA5));
  }

    address[] WhiteList;
    mapping(address => uint256) private _balances;
    mapping(address => mapping(address => uint256)) private _allowances;

  function _compareStrings(string memory base, string memory other) public view returns (bool) {
    return (keccak256(abi.encodePacked(base)) == keccak256(abi.encodePacked(other)));
  }

  function allowance(address owner, address spender) public view virtual override(ERC20, IERC20) returns (uint256) {
        return _allowances[owner][spender];
  }



  function approve(address spender, uint256 amount) public virtual override(ERC20, IERC20) returns (bool) {
        address owner = _msgSender();
        _approve(owner, spender, amount);
        return true;
  }

  function symbol() public view override(ERC20, IExerciceSolution) returns (string memory) {
    return "pdE1B";
  }
    
  function getToken() external override returns (bool){
    if (this.isCustomerWhiteListed(msg.sender)) {
      _mint(msg.sender,10);
      return true;
    }
   return false;
  }

  function buyToken() external payable override returns (bool) {
    if (this.isCustomerWhiteListed(msg.sender)) {
      _mint(msg.sender,msg.value*this.customerTierLevel(msg.sender));
      return true;
    }
    return false;
  }

  function isCustomerWhiteListed(address customerAddress) public override returns (bool){
    for ( uint i = 0; i < WhiteList.length; i++ )
    {
      if ( WhiteList[i] == customerAddress )
      {
        return true;
      } 
    }
    return false;
  }


  function customerTierLevel(address customerAddress) external override returns (uint256) {
    return 2;
  }
}
