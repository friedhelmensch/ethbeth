pragma solidity ^0.4.2;

contract EthBeth {
    
    struct Bet 
    {
        address owner;
        uint betAmount;
    }

    mapping (string => Bet) openBets;
    mapping (string => address) runningBets;
    mapping (string => address) results;

	function EthBeth() 
    {
	}

	function createBet(string betText) payable external
    {
        if(msg.value == 0)
        {
            throw;
        }
        openBets[betText] = Bet(msg.sender, msg.value);
	}

    function joinBet(string betText)
    {
        if(openBets[betText].owner == address(0x0))
        {
            throw;
        }
        runningBets[betText] = msg.sender;
    }

    function setWinner(string betText, bool isWinner)
    {
        if(results[betText] == address(0x0)) throw;
        if(runningBets[betText] != msg.sender || openBets[betText].owner != msg.sender) throw;
        

        if(results[betText] == address(0x0))
        {
            if(results[betText] == msg.sender)
            {
                if(isWinner)
                {
                    //you win
                }
            }
        }
        else
        {
            if(isWinner)
            {
                results[betText] = msg.sender;
            }else
            {
                if(runningBets[betText] == msg.sender)
                {
                    results[betText] = openBets[betText].owner;
                }else
                {
                    results[betText] = runningBets[betText];
                }
            }
        }
    }
}
