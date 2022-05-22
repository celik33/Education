public class Students {

    private String name = 'AliCan';
    private integer age = 13;//eger access modifier koymazsak otomatik olarak private kabul eder.
    private Boolean successful = true ;
    
    // name, age ve successfull data larini okunabilir yapalim.
    public String getName(){
        return name;
    }
     public Integer getAge(){
        return age;
    }
    public Boolean isSuccessful(){
        return successful;
    }
    // name, age ve successfull data larini okunabilir yapalim.
    // yeni data uretmeyen method larin return type lari void olu
    // set method yeni data uretmez var olan data yi degistirir bu yuzden return type lari hep void olmali
    public void setName(String name){
        this.name = name ;
    }
    public void setAge(Integer age){
        this.age = age ;
    }
    public void isSuccessful(Boolean successful){
        this.successful = successful ;
    }
}