public class soqlTr02 {
    
    //Example 1 : Account object lerinin min , max ve ortalama isci sayilarini
    //veren method olusturunuz
    //1.yol
    public static void method01(){
        
        AggregateResult[] result = [SELECT MIN(NumberOfEmployees), MAX(NumberOfEmployees), AVG(NumberOfEmployees) FROM Account];
        //tum datayi ayni satirda
        System.debug(result);
        //record daki herbir datayi ayri ayri alir
        System.debug('Minimum number of employees= ' + result[0].get('expr0'));
        System.debug('Maximum number of employees= ' + result[0].get('expr1'));
        System.debug('Average number of employees= ' + result[0].get('expr2'));
    }
    //2.yol
    public static void method02(){
        //Alias ==> Takma isim
        AggregateResult[] result = [SELECT MIN(NumberOfEmployees) min, MAX(NumberOfEmployees) max, AVG(NumberOfEmployees) avg FROM Account];
        //tum datayi ayni satirda
        System.debug(result);//(AggregateResult:{min=120, max=145000, avg=21996.81818181818})
        //record daki herbir datayi ayri ayri alir
        System.debug('Minimum number of employees= ' + result[0].get('min'));
        System.debug('Maximum number of employees= ' + result[0].get('max'));
        System.debug('Average number of employees= ' + result[0].get('avg'));
    }
    
    //Example 2 : Account ortalama isci sayilarini Industry gore veren method olusturunuz.
    //1.way
    public static void method03(){
        
        AggregateResult[] result =[SELECT Industry,AVG(NumberOfEmployees) avgByIndustry FROM Account GROUP BY Industry];
        system.debug(result);
        
        for(AggregateResult w: result){
            system.debug('Industry: ' + w.get('Industry') + ' ==> Average Number Of Employees ' + w.get('avgByIndustry'));
            
        }
    }
    //2.yol:
     public static void method04(){
         
        for(AggregateResult w: [SELECT Industry,AVG(NumberOfEmployees) avgByIndustry FROM Account GROUP BY Industry]){
            system.debug('Industry: ' + w.get('Industry') + ' ==> Average Number Of Employees ' + w.get('avgByIndustry'));
            
        }
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}