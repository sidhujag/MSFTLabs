contract accountRegistry{
    
    mapping (string => address) accountMap;
    
    function accountRegistry(){
     
    }
    
    function registerAccount(string name) constant returns (bool){
        if (accountMap[name] != address(0)){
            return false;        
        }
        
        accountMap[name] = msg.sender;
        return true;
    }
    
    function removeAccount(string name) constant returns (bool){
        if (accountMap[name] == address(0) ){
            return true;        
        }    
        
        if (accountMap[name] != address(0) && accountMap[name] == msg.sender){
            accountMap[name] = address(0);
            return true;
        } 
        
        return false;
    }
    
    function getAccount(string name) constant returns (address){
        return accountMap[name];    
    }
    
}