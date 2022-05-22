public class soqlTr05 {
    //Bir Account object olusturunuz. onu database e insert ediniz.
    // Insert edildigini hem developer console dan hem de UI dan dogrulayiniz
    public static void method01(){
        //sadece bir tane insert yapildi
        Account acc1 = new Account(Name = 'Test01', Phone = '12345678998');
        acc1.Rating = 'Hot';
        
        Insert acc1;// Database.insert(acc1) ikisi de calisir.
        
        
        //coklu insert yapalim
        List<Account> accList = new List<Account>();
         Account acc2 = new Account(Name = 'Test02');
         Account acc3 = new Account(Name = 'Test03');
         Account acc4 = new Account(Name = 'Test04');
         Account acc5 = new Account(Name = 'Test05');
        
        accList.add(acc2);
        accList.add(acc3);
        accList.add(acc4);
        accList.add(acc5);
        
        Database.insert(accList, false);
        
        
    }

}