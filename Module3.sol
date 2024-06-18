// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract World_Health_Organization{
    address private chief;
    address private country_address;
    string public TokenName = "Health_Fund_Token";
    string public Symbol = "HFT";
    uint public TotalSupply =0;

    mapping (address => uint) public balances;

    constructor(){
        chief = msg.sender;
    }
    
    modifier onlyChief(){
        require(msg.sender == chief ,"only WHO chief can mint the tokens");
        _;
    }

    function Generate_HFT(uint No_Of_HFT, address _country_address) onlyChief public {
         TotalSupply = TotalSupply + No_Of_HFT;
         balances[_country_address] =  TotalSupply;
         
    }
    
    function Transfer_HFT(uint No_Of_HFT , address Receiver_Country ) public {
         require(No_Of_HFT <= balances[msg.sender], "Insufficient HFT");
         balances[Receiver_Country] = balances[Receiver_Country] + No_Of_HFT;
         balances[msg.sender] = balances[msg.sender] - No_Of_HFT ;

    }

    function Burn_HFT(uint No_Of_HFT) public {
        require(No_Of_HFT <= balances[msg.sender], "Inufficient Token");
        balances[msg.sender] = balances[msg.sender]- No_Of_HFT;
    }

}