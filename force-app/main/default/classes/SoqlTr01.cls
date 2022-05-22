public class SoqlTr01 {
    
    //Account name lerini ve telefon numaralarini console a yazan bir method olusturunuz(list)
    public void method01(){
        List<Account> accs =[SELECT Name, Phone FROM Account];
        // Tum datayi tek satirda yazdirir
        System.debug(accs);
        // Herbir datayi farkli bir satirda yazdirir
        for(Account w : accs){
            System.debug('Account Name: ' + w.Name + '-Account Phone: ' + w.Phone);
        }
    }
    //Account name lerini ve telefon numaralarini console a yazan bir method olusturunuz(map kullaniniz)
    
    public static void method02(){
        Map<Id, Account> accsMap = new Map<Id, Account>([SELECT Name, Phone FROM Account]);
        // Tum datayi tek satirda yazdirir
        System.debug(accsMap);
        
        for(Account w: accsMap.values()){
            System.debug('Account Name: ' + w.Name);
        }
            
    }
    // herbir contact icin account name, account rating, contact name, contact departmen ve case number i console yazdiran method olusturunuz
   public static void method03(){
     List<Contact> contacts =[SELECT Contact.Name,
                                     Contact.Department,  
                					 Account.Name, 
                					 Account.Rating, 
               						(SELECT Case.CaseNumber, Case.Subject 
                					 FROM Cases) 
         					   FROM Contact] ;
       //Data yi ana object ten aliniz.
       for(Contact w: contacts){
           System.debug(w.Name + ' - ' + w.Department + ' - ' + w.Account.Name + ' - ' + w.Account.Rating );
       }
   }
    
    //for(Contact w: contacts){
        //for(Case t : w.Cases){
           // System.debug(t.CaseNumber + ' - ' + t.Subject);
            
        //}
   // }
}