public class soqltr04 {
    
    //Farkli durumlara gore farklalasan query ler olusturunuz.
    //ornegin ; 'Class1' icin Account Name ve Annual Revenue yuRating i Hot ve Annual revenue su 1000 den buyuk olanlar icin secsin
    //          'Class2' icin Account Name ve Annual Revenue yuRating i Warm ve Annual revenue su 1000 den buyuk olanlar icin secsin
    //          'Class1' icin Account Name ve Annual Revenue yuRating i Null 
    public static void method01(String className){
        List<Account> q1 = new List<Account>();
        String anaQuery = 'SELECT Name, AnnualRevenue FROM Account';
        if(className.equals('Class1')){
             anaQuery = anaQuery + ' WHERE Rating = \'HOT\' AND AnnualRevenue>1000';
            
        }else if(className.equals('Class2')){
             anaQuery = anaQuery +' WHERE Rating = \'WARM\' AND AnnualRevenue>1000';
         
        }else{
            anaQuery = anaQuery + ' WHERE Rating = NULL';
        
        }
        List<Account> result = Database.query(anaQuery);
        
        for(Account w: result){
                system.debug(w.Name = ' - ' + w.AnnualRevenue);
            }
      }
}