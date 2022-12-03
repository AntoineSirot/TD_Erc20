const ExerciceSolution = artifacts.require("ExerciceSolution");

module.exports = async function (deployer) {
    await deployer.deploy(ExerciceSolution);
    const token = await ExerciceSolution.deployed();
  
