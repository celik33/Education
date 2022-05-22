public class soqlTr06 {
    
    //1)Database e bir tane Lead object si Insert ediniz
    //2)Insert ettiginiz Lead object inin LastName ini Xyz yapiniz.
    public static void method01(){
        //Lead obj = new Lead(FirstName = 'Ali', LastName='Can', Company = 'TechPro Education', Status = 'Open');
        //Insert obj;
        // Note1: update, delete, undelete opertion are very important these operations can  not make a operation without id.
        List<Lead> leads = [SELECT Id FROM Lead WHERE Firstname ='Ali' AND Lastname = 'Can' AND Company = 'TechPro Education'];
        
        for(Lead w : leads){
            w.Lastname = 'Xyz';
        }
        Update leads;//Database.update(leads);
    }

}