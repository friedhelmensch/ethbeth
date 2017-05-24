var EthBeth = artifacts.require("./EthBeth.sol");

contract('EthBeth', function(accounts) 
{
  it("should create a bet", function() 
  {
    return EthBeth.deployed().then(function(instance) 
    {
      instance.createBet.call("marcel", {from: accounts[1], value: 0 });
    })
  });
});
