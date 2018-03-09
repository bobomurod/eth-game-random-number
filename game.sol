//eth random number finding game
//ver 0.000000001 final

pragma solidity ^0.4.18;

contract game{

    uint nonce = 0;

    event UserWon(address user, uint numberGenerated);
    event UserLost(address user, uint numberGenerated);

    function() public payable{

    }

    function getBalance() public constant returns(uint){
        return this.balance;
    }


    function play() payable public {

        //gameer will need to pay 0.01 ether 
        if (msg.value != 0.01 ether){
            throw; //use   assert()  for non-JS testnets
        }

        uint randomnumber = uint(keccak256(block.blockhash(block.number), nonce)) % 100;
        nonce ++ ;


        //gamer gets 0.02 back if numeber coorect
        if(randomnumber%2 == 0){
            msg.sender.transfer(msg.value * 2);
            UserWon(msg.sender, randomnumber);
        }
        else {
            // game over, gamer = looser 
            UserLost(msg.sender, randomnumber);
        }

    }


}