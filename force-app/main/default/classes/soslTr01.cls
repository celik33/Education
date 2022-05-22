public class soslTr01 {
    public static void method01(){
           List<List<sObject>> result = [FIND 'United' IN Name FIELDS RETURNING Account(Name), Contact(Firstname, Lastname)];
        System.debug(result);
        }
    public static void method02(){
        List<List<sObject>> result1 =[FIND 'Un*' IN NAME FIELDS  RETURNING Account(Name), Contact(Firstname, Lastname) ];
        System.debug(result1);
    }
}