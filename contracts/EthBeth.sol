pragma solidity ^0.4.2;

contract EthBeth {
    
    struct Bet 
    {
        address owner;
        uint betAmount;
    }

    mapping (uint => Bet) openBets;
    
    Bet myBet;

    uint myNumber;

	// function createBet(uint betNumber) payable external
    // {
    //     if(msg.value == 0)
    //     {
    //         throw;
    //     }
    //     if(openBets[betNumber].betAmount != 0)
    //     {
    //         throw;
    //     }
    //     // if(openBets[betText].owner != address(0x0))
    //     // {
    //     //     throw;
    //     // }

    //     //openBets[betNumber] = Bet({owner:msg.sender, betAmount:msg.value});
    //     //openBets[betNumber] = Bet(msg.sender, msg.value);
    //     myBet = Bet(msg.sender, msg.value);
	// }

    function setNumber(uint number)
    {
        myNumber = number;
    }

    function getNumber() returns (uint number)
    {
       return myNumber;
       //return (openBets[betNumber].betAmount, openBets[betNumber].owner);
    }

    // function createBetSimple(uint betNumber)
    // {
    //     myBet = Bet(msg.sender, betNumber);
	// }

    // function returnBet() returns (uint amount, address owner)
    // {
    //    return (myBet.betAmount, myBet.owner);

    //    //return (openBets[betNumber].betAmount, openBets[betNumber].owner);
    // }


    // mapping (string => address) runningBets;
    // mapping (string => address) results;

    // function joinBet(uint betText)
    // {
    //     if(openBets[betText].owner == address(0x0))
    //     {
    //         throw;
    //     }
    //     //runningBets[betText] = msg.sender;
    // }

    // function setWinner(string betText, bool isWinner)
    // {
    //     if(results[betText] == address(0x0)) throw;
    //     if(runningBets[betText] != msg.sender || openBets[betText].owner != msg.sender) throw;
        

    //     if(results[betText] == address(0x0))
    //     {
    //         if(results[betText] == msg.sender)
    //         {
    //             if(isWinner)
    //             {
    //                 //you win
    //             }
    //         }
    //     }
    //     else
    //     {
    //         if(isWinner)
    //         {
    //             results[betText] = msg.sender;
    //         }else
    //         {
    //             if(runningBets[betText] == msg.sender)
    //             {
    //                 results[betText] = openBets[betText].owner;
    //             }else
    //             {
    //                 results[betText] = runningBets[betText];
    //             }
    //         }
    //     }
    // }
}
