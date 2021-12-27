const AliGamingToken = artifacts.require("AliGamingToken");

module.exports = function (deployer) {
  deployer.deploy(AliGamingToken, "Ali Gaming Token", "AGT", 8, 1000 * (10 ** 10));
};
