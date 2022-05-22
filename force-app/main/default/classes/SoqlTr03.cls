public class SoqlTr03 {
    
   //Account isimlerini alfabetik siraya koyduktan sonra 3. 4. 5. . Account larin
   //Ratinglerini Accoun isimleri ile console yazdiriniz.
    public static void method03(){
        
      List<Account> accs = [SELECT Name , Rating FROM Account ORDER BY Name LIMIT 3 OFFSET 2];
        
        for(Account w: accs){
            system.debug(w.Name + ' - ' + w.Rating);
            
        }
    } 
     public static void method04(){
         Integer lim = 3;
         Integer oSet = 2;
        
      List<Account> accs = [SELECT Name , Rating FROM Account ORDER BY Name LIMIT: lim OFFSET: oSet];
        
        for(Account w: accs){
            system.debug(w.Name + ' - ' + w.Rating);
            
        }
    } 
    public static void method05(Integer lim, Integer oSet){
        
      List<Account> accs = [SELECT Name , Rating FROM Account ORDER BY Name LIMIT: lim OFFSET: oSet];
        
        for(Account w: accs){
            system.debug(w.Name + ' - ' + w.Rating);
            
        }
    } 

    
}