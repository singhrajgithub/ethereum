pragma solidity ^0.5.0;

import "filename"

//attributes
//string name;
//int comment

//events
//event logEvent();
//Different Types of Storage types.

contract ContractName 
{   uint x;
    int y;
    int256 z;
    uint constant VERSION_ID = 0x1234;
    bool b =true;
    bytes a;
    byte a1;
    address public owner = " 0x127w8217827821772e21e12uy21et3";
    bytes32 [5] names;
    names[0] = "raj";
    names[1] = "singh";
     function add()
     {
         if (msg.sender ==owner)
         {
             var z =x*y;
         }
         else 
         {
             return "you can not call this function";
         }
     }
    
    //dynamic arrays;
    //mapping key values type of storage structure;
    
    mapping (string =>uint) public balance;
    {
        "raj => 100" ,"mayank => 10000"
        balance["raj"];
        //mapping is just like dictionary in solidity i.e. Key value Pair;
        
        
    }
    
    //possible values;
     enum  state (Initiated,Notarized, Approved, Completed, Terminated);
    // below is the address of the person calling contract;
     return msg.sender     
     
     //view  == only reading the function , only return can not happen but not modification
     //pure == This function is not going to change anything 
     //and not also going to return anything.
     
     function getAdd() public view returns (address newAddress)
     {
        return msg.sender;
     }
     
    
}


// Second example 

pragma solidity ^0.5.1;
//pragma solidity ^0.5.0;

contract con{
    
    int x;
    function getAdd() payable public returns (address amountSend , uint gasLeft) 
    {   
        x= x+1;
        msg.sender;  //return address through which this function was called.
       // msg.value;  //  return the balance being sent to the contract.
       //never use tx.origin() this given full chain details of the sender 
       // block.coinbase (address): current block miner’s address 
        msg.data; // checksum+data;
        //msg.gas;
        gasleft(); // returns the amount of gas
        msg.sig;  //only checksum
        return ( msg.sender, gasleft());
        //return gasleft();
        
        // time 
        //seconds, hours, days, weeks
    }
}


//Third Example with Interface and type of memory explanation

pragma solidity ^0.5.1;

// Make sure you are maintaining the scope in solidity.
// Types of memory areas 
// heap, memory,stack.
// heap    = global storage , persisted 
// memory  = Actual variable storage.
// stack   = storage for the operators & functions .
// interface  = it is the declaration of the function execution of the function is provided in the later class itself.

interface regulator
{ 
    
    function checkValue(uint amount) external returns(bool);
    function loan() external;

    
}

contract HDFCContract is regulator
{
    function deposit() 
    {
        
    }
    function checkValue()
    {
        
    }
    
    
}

contract ICICICOntract is regulator
{
    
}

contract myContract 
{
    string private name;
    uint private age;
    uint public ages; // visible for everyone when created as public
    function setName(string memory newName) public 
    {
        name=newName; // 
        //this.name = newName //  this will try to find name in setName function so this will not work. 
        //this is available in global name global namespace
    }
    
    function getName() public view returns(string memory)
    {
        return name;
        
    }
    
    function setAge(uint newAge) public 
    {
        age=newAge;
    }
    
    function getAge() public view returns(uint)
    {
     return age;   
    }
}

