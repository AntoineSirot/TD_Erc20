# ERC20 101

## Introduction

Welcome! This is my work on an automatic workshop. This repository contain my answer but you can also work on this project by going to the repo I forked on. In this project I implemented several functions in a new ERC20 smart contract to interact with the Evaluator contract (which goerli address is : 0x7C5629d850eCD1E640b1572bC0d4ac5210b38FA5). I will explain the logic i used in every step of this projet. 

## How could you run my solution ? 

To do so you just have to clone my repo and implement you private key and your infura key in the truffle-config.js file. WARNING don't forget that you should never share your private key especially in a GitHub repository !!

## How did I work on this TD
### Warning

Before I start to explain how I proceed to work I should warn you that my solution isn't optimized at all. I did the maximum I could in the time I had so for example you can't complete every exercices with my current contract. I changed it several times to validate exercices.

### Exercice 1 & 2 :

In these Exercices I had to call exercice1 evaluator's function to get a random supply and ticker. Then I've implemented them in my contract and I've also implemented the symbol() function to validate Exercice2.

### Exercice 3 :

In this Exercice I've implemented GetToken() function to give free token to the Evaluator.

### Exercice 4 :

Here I've implemented BuyToken() so the Evaluator could buy token proportionnaly to the amount he enters in his demand.

### Exercice 5 & 6:

After implementing BuyToken I add a list of addresses to WhiteList addresses (i also could have used a mapping). With this WhiteList you wil or won't be able to buy my contract's token.

### Exercice 7 :

This Exercice was quick, I only had to add different customer Tier level like a VIP system and initialize it to 0 if an address wasn't WhiteListed.

### Exercice 8 & 9 :

In these last Exercices I implemented my BuyToken() function so that if your customer level is high my token will be cheaper for you.

### Exercice 10 :

As I said in the warning I didn't implement this exercice but I will one day to have a clearer code.

## Conclusion

This TD was an excellent introduction to start coding in Solidity after I had read severals smart contracts.
