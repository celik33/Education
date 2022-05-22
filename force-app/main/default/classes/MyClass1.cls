public class MyClass1 {

		//Rastgele bir harf ureten bir fonksiyon olusturunuz
          public static String rastgeleBirHarfver(){
        
        String Alfabe = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';
        Integer maxIndex = alfabe.length()-1;
        Integer rastgeleIndex = Integer.valueOf(Math.random()*maxIndex);
        return alfabe.substring(rastgeleIndex, rastgeleIndex+1);
     } 
}