pragma solidity ^0.4.18;

contract game{

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

        //gamer gets 0.02 back if numeber coorect
    }


}