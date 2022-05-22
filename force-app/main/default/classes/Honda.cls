public abstract class Honda {
    
    public void music(){
        System.debug('pro');
    }
    
    public abstract void engine();
    /*
     1)Abstract method larin body si olmaz
	 2)Body si olan method lara non-abstract veya concrete metod denir.
	 3) Abstract methodlar tum child class lar tarafindan override edilmelidir
	 4)Absract method lar ancak abstract class lar icinde olusturulabilir
	 5)Abstract class lar hem abstract method hem de concrete method icerebilirler
	 6) Concrete methodlar child class lar tarafindan istenirse override edilebilirler
   */
    
    /*
     virtual class ile abstract class arasindaki farklar?
	i)virtual class lardan obje olusturabiliriz ama abstract tan olmaz
	ii)Abstract class lardaki tum abstract method lar tum child class lar tarafindan
	override edilmelidir ama virtual class da boyle bir durum yoktur. cunku virtual 
	class larda abstract method olusturulamaz
     */

}