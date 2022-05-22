public interface Motor {
    
    // 1) interface icindeki method lar otomatik olarak public tir, bu yuzden interface lerde method olusturuken
    // access modifier yazmayiz.
    // 2)interface icindeki method lar otomatik olarak abstract tir, bu yuzden interface lerde abstract method olusturuken
    // abstract keyword unu ve method body sini yazmayiz
    void eco();
    void turbo();
    void gas();
        
}