import UIKit


// Geri Dönüş Değeri Olmayan Fonksiyon
func selamla(){
    let selam = "Merhaba Ahmet"
    print(selam)
}

selamla()


// Geri Dönüş Değeri Olan Fonksiyon-----Burada aynı zamanda fonksiyona parametrede eklemiş olduk
func selamla1(isim : String) -> String{
    let selam = "Selam \(isim)"
    return selam
}

var ahmet = selamla1(isim: "Ahmet")
print(ahmet)


// Çoklu parametreli Fonksiyon örneği

func selamla2(selam1:String, isim2:String) -> String{
    let selam = "\(selam1) \(isim2)"
    return selam
}

var mehmet = selamla2(selam1: "Hello", isim2: "Memo")
print(mehmet)


//Birde toplamalı bişiler yapalım

func math(deger1:Int, deger2:Int, deger3:Int) -> Int{
    let islem = (deger1*deger2)+deger3
    return islem
}
var sonuc = math(deger1: 50, deger2: 2, deger3: 15)

print(sonuc)


