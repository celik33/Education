public class SOQLTr1 {
    
    public void method1(){
        List<Account> acs = [SELECT Name, Phone FROM Account];
        
        System.debug(acs);
        //her bir datayi farkli bir satirda yazdirir
        for(Account w: acs){
            System.debug('Account Name: ' + w.Name + '- Account Phone: ' + w.Phone);
        }
    }
    
    public static void method2(){
        Map<Id, Account> acsMap = new Map<Id, Account>([SELECT Name, Phone FROM Account]);
        // Tume datayi tek satirda yazdirir
        System.debug(acsMap);
        
        for(Account w: acsMap.values()){
            
            System.debug('Account Name: ' + w.Name);
            
        }
                       
        
    }
    
   //Her bir contact icin Account name Account rating Contact name 
   //Contact department ve case number i ve case subject consola yazdiran method olusturunuz
    
    public static void method3(){
        
         
        
     List<Contact> contacts = [SELECT Contact.Name, 
          							  Contact.Department, 
          			                  Account.Name, 
          			                  Account.Rating, 
         			                  (SELECT Case.CaseNumber, Case.Subject 
          			                   FROM Cases) 
                                FROM Contact];
        //Data yi ana object ten aliniz
       // for(Contact w: contacts){
           // System.debug(w.Name + ' - ' + w.Department + ' - ' + w.Account.Name + ' - ' + w.Account.Rating );
            
        //}
        
        //datayi en kucuk child object ten(Case) almak
        
        for(Contact w: contacts){
            for(Case t: w.Cases){
                System.debug(t.CaseNumber + ' - ' + t.Subject);
                
            }
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}