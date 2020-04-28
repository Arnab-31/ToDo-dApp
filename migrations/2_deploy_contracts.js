var Todo = artifacts.require("./ToDo.sol");
module.exports = function(deployer) 
   { 
       deployer.deploy(Todo);
    };