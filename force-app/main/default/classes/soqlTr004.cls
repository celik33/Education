public class soqlTr004 {
    // Farkli durumlara gore farklilasan query ler olusturunuz
    // orengin; class1 icin Accoun Name ve Annual revenue yu Rating i Hot ve Annual Revenue su 1000 den buyuk olan
    // 			class2 icin Accoun Name ve Annual revenue yu Rating i Warm ve Annual Revenue su 1000 den buyuk olan
    // 			Digerleri icin Accoun Name ve Annual revenue yu Rating i Null  olan
    //1.way: Not good
    public static void method01(String className){
        if(className.equals('class1')){
            List<Account>q1 = [SELECT Name, AnnualRevenue FROM Account WHERE Rating= 'Hot' AND AnnualRevenue>1000];
            for(Account w: q1){
                System.debug(w.Name + ' - ' + w.AnnualRevenue);
            }
        }else if(className.equals('class2')){
            List<Account>q2 = [SELECT Name, AnnualRevenue FROM Account WHERE Rating= 'Warm' AND AnnualRevenue>1000];
            for(Account w: q2){
                System.debug(w.Name + ' - ' + w.AnnualRevenue);
            }
            
        }else{
            List<Account>q3 = [SELECT Name, AnnualRevenue FROM Account WHERE Rating= NULL ];
            for(Account w: q3){
                System.debug(w.Name + ' - ' + w.AnnualRevenue);
            }
        }
    }
    
    //2.way:  good
    public static void method02(String className){
        
        List<Account>q1 = new List<Account>();
        if(className.equals('class1')){
            q1 = [SELECT Name, AnnualRevenue FROM Account WHERE Rating= 'Hot' AND AnnualRevenue>1000];
        }else if(className.equals('class2')){
            q1 = [SELECT Name, AnnualRevenue FROM Account WHERE Rating= 'Warm' AND AnnualRevenue>1000];
        }else{
            q1 = [SELECT Name, AnnualRevenue FROM Account WHERE Rating= NULL ];
            
        }
           for(Account w: q1){
                System.debug(w.Name + ' - ' + w.AnnualRevenue);
        }
    }
    
    //3.way: Best
    public static void method03(String className){
        
        List<Account>q1 = new List<Account>();
        String anaQuery ='SELECT Name, AnnualRevenue FROM Account';
        
        if(className.equals('class1')){
            anaQuery = anaQuery + ' WHERE Rating= \'Hot\' AND AnnualRevenue>1000';
        }else if(className.equals('class2')){
            anaQuery = anaQuery + ' WHERE Rating= \'Warm\' AND AnnualRevenue>1000';
        }else{
            anaQuery = anaQuery + ' WHERE Rating= NULL';
            
        }
        
        
        List<Account> result = Database.query(anaQuery);
        
           for(Account w: result){
                System.debug(w.Name + ' - ' + w.AnnualRevenue);
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}