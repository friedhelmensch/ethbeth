
var EthBeth = artifacts.require("./EthBeth.sol");

module.exports = function(deployer) 
{
  deployer.deploy(EthBeth, {gas:4500000});
};
