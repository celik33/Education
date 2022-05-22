public class soqlRec {
    public static List<Account> getAccount(String accName){
        List<Account> acc = [SELECT Name FROM Account WHERE Name LIKE :'%' + accName + '%'];
        
        return acc;
    }
    public static void insertAccount(Integer num){
        
        List<Account> acc = new List<Account> ();
        for(Integer i=1 ; i<num+1; i++){
            acc.add(new Account(Name = 'Test Account '+i));
            
        }
        
        Database.insert (acc, false);
        
    }
    public static void deleteAccount(String accName){
        
        List<Account> acc = [SELECT Id FROM Account WHERE Name LIKE : '&' + accName + '%'];
        
        Database.delete (acc, false);
        
            
        }
        
       
        
    
}