pragma solidity ^0.4.18;

contract game{

    uint nonce = 0;

    function() public payable{

    }

    function getBalance() public constant returns(uint){
        return this.balance;
    }


    function play() payable public {

        //gameer will need to pay 0.01 ether 
        if (msg.value != 0.01 ether){
            throw;
        }

        uint randomnumber

        //gamer gets 0.02 back if numeber coorect
    }


}