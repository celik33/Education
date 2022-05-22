public class soqlTr003 {
    
    //Account ismi GenePoint’, ‘Burlington Textiles Corp of America’, ‘sForce’, ‘Dickenson plc’
    //olan Account Rating lerini Account isimleri ile birlikte console yazdiran methodu olusturunuz
    //1.way: not reccommended
    public static void method01(){
        
        List<Account> accs = [SELECT Name, Rating FROM Account Where Name IN('GenePoint', 'Burlington Textiles Corp of America', 'sForce', 'Dickenson plc')];
        for(Account w: accs){
            System.debug(w.Name + ' - ' + w.Rating);
        }
    }
    
    //2.way: Reccommended
    public static void method02(){
        
        List<String> accountName = new List<String>{'GenePoint', 'Burlington Textiles Corp of America', 'sForce', 'Dickenson plc'};
        //:accountName ifadesine binding variable denir.
        //Binding Variable lar IN , NOT IN , '=' , '!=' , 'LIMIT' , 'OFFSET' lerde kullanilabilir
        //Use IN
        List<Account> accs1 = [SELECT Name, Rating FROM Account Where Name IN :accountName];
        for(Account w: accs1){
            System.debug(w.Name + ' - ' + w.Rating);
        }
        System.debug('================');
        // Use NOT IN
        List<Account> accs2 = [SELECT Name, Rating FROM Account Where Name NOT IN :accountName];
        for(Account w: accs2){
            System.debug(w.Name + ' - ' + w.Rating);
        }
         System.debug('================');
        //Use '='
        List<Account> accs3 = [SELECT Name, Rating FROM Account Where Name = :accountName];
        for(Account w: accs3){
            System.debug(w.Name + ' - ' + w.Rating);
        }
        System.debug('================');
        //Use '!='
        List<Account> accs4 = [SELECT Name, Rating FROM Account Where Name != :accountName];
        for(Account w: accs4){
            System.debug(w.Name + ' - ' + w.Rating);
        }
   
    }
    
    //Account isimlerini alfabetik siraya koyduktan sonra 3. 4. 5.  Account larin
    //Rating lerini Account isimleri ile birlikte console yazdiran methodu olusturunuz
    //1.way:
    public static void method03(){
        
        List<Account> accs = [SELECT Name, Rating FROM Account ORDER BY Name LIMIT 3 OFFSET 2];
        
        for(Account w: accs){
            System.debug(w.Name + ' - ' + w.Rating);
        }
        
    }
    
    //2.way:
    public static void method04(){
        Integer lim = 3;
        Integer oSet = 2;
        
        List<Account> accs = [SELECT Name, Rating FROM Account ORDER BY Name LIMIT :lim OFFSET :oSet];
        
        for(Account w: accs){
            System.debug(w.Name + ' - ' + w.Rating);
        }
        
    }
    
        //3.way:The Best
    public static void method05(Integer lim ,Integer oSet){
       
        
        List<Account> accs = [SELECT Name, Rating FROM Account ORDER BY Name LIMIT :lim OFFSET :oSet];
        
        for(Account w: accs){
            System.debug(w.Name + ' - ' + w.Rating);
        }
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}