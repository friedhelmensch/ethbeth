var EthBeth = artifacts.require("./EthBeth.sol");

contract('EthBeth', function(accounts) 
{
  // it("should create a bet by sending 1 ETH", function() 
  // {
  //   return EthBeth.deployed().then(function(instance) 
  //   {
  //     //instance.createBet.call(42, {from: accounts[1], value: 1 });
  //     instance.createBetSimple.call(42);
  //     instance.returnBet.call().then(function(bet)
  //     {
  //       console.log("Balance returned", bet[0].toString(), bet[1]);   
  //     });
  //   })
  // });

  it("get Number Set Number", function() 
  {
    return EthBeth.deployed().then(function(instance) 
    {
      //instance.createBet.call(42, {from: accounts[1], value: 1 });
      instance.setNumber.call(42);
      instance.getNumber.call().then(function(number)
      {
        console.log("Balance returned", number.toString());   
      });
    })
  });
});
