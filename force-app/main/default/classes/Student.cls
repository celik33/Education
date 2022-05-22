public class Student {
    
    private String name = 'Ali Can';
    Integer age = 13;
    Boolean successful = true;
    
    
    public String getName(){
        return name;
        
    }
    public Integer getAge(){
            return age;
    }
     public Boolean isSuccessful(){
            return successful;
    }
    
    public void setName(String name){
        this.name = name;
    }
    public void setAge(Integer age){
        this.age = age;
    }
    public void setSuccessful(Boolean age){
        this.successful = successful;
    }

}