public class A4 implements Motor, Klima, Fren{
   
    //interface leri parent yapmak icin implements keyword kullanilir
    //A4 Class i motor interface i icindeki tum methodlari override etmek zorundadir.
    //A4 Class i motor interface i icindeki tum methodlari override etmek zorunda oldugundan method larin bas kismina override yazilmaz
    
    public void eco(){
            System.debug('Audi A4 ekonomik motor kullanir...');
        }
    
    public void turbo(){
            System.debug('Audi A4 turbo motor kullanir...');
        }
    
     public void gas(){
            System.debug('Audi A4 gas motor kullanir...');
        }
    
    public void mevsimsel(){
            System.debug('Audi A4 mevsimsel klima kullanir...');
        }
    public void digital(){
            System.debug('Audi A4 digital klima kullanir...');
        }
    public void abs(){
            System.debug('Audi A4 abs fren kullanir...');
        }
    public void secure(){
            System.debug('Audi A4 secure klima kullanir...');
        }

}