public class soqlTr005 {
    
    public static void method01(){
        //sadece bir tane insert yapildi
        Account acc1 = new Account(Name = 'Test001', Phone = '12345678998');
        acc1.Rating = 'Hot';
        
        Insert acc1;
        
        List<Account> accList1 = new List<Account>();
        Account acc2  = new Account(Name = 'Test002');
        Account acc3 = new Account(Name = 'Test003');
        Account acc4  = new Account(Name = 'Test004');
        Account acc5  = new Account(Name = 'Test005');
        
        accList1.add(acc2);
        accList1.add(acc3);
        accList1.add(acc4);
        accList1.add(acc5);
        
        Database.insert(acclist1, false);
        
            }

}