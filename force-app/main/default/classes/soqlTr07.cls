public class soqlTr07 {
    public static void method01(){
        
        Opportunity obj = new Opportunity();
        obj.Name ='TechProEd';
        obj.StageName = 'Closed Won';
        obj.CloseDate=date.today().addDays(2);
        Database.insert(obj);
        
        //delete icin id ye ihtiyac var
        List<Opportunity> opps=[SELECT id FROM Opportunity WHERE Name = 'TechProEd' AND StageName='Closed Won'];
        Database.delete(opps);
   }

}