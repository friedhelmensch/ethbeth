var EthBeth = artifacts.require("./EthBeth.sol");

contract('EthBeth', function(accounts) 
{
 it("setNumber and getNumber", function() 
  {
    return EthBeth.deployed().then(function(instance) 
    {
      //instance.createBet.call(42, {from: accounts[1], value: 1 });
      instance.setNumber(33).then(function()
      {
        instance.getNumber.call().then(function(number)
        {
          assert.equal(33, number.toString(), "did not work");
        });
      });
    })
  });
});
