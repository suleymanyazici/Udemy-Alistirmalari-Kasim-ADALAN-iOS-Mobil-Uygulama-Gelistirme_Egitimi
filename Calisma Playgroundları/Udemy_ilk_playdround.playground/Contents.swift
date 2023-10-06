import UIKit

/*class main{ // Global
    var x = 20
    var y = 30
    
    func toplama(){
        var x = 30   // Daha iç taraftaki kod kapsamlarına biz lokal deriz ve localdeki tanımlamaar herzaman Globaldekinden baskındır
        
        x = x + y
        print(x)
    }
    func carpma(){  // Daha iç taraftaki kod kapsamlarına biz lokal deriz
        x = x * y
        print(x)
    }
}

var index = 1

for  index in 1...5{
    if (index == 4){
    continue
    }
    print(index)
}

var a : Int?
a = -5

var isim : String = "Süleyman"
var yas : Int = 23
var okul = "Düzce Üniversitesi"
var memleket = "Rize"
var sehir = "İstanbul"
var ilce = "Sultangazi"

print("Selamlar, \nBenim Adım \(isim) \(yas) yaşındayım ve \(sehir) \(ilce)' de yaşıyorum. \(memleket)'liyim ve \(okul)'dan mezun oldum.\nTeşekkürler,\nİyi Çalışmalar.")

var x = 10
var y = 20
var z : Int?
z = x + y
print(z)
*/
// sayısaldan sayısala dönüşüm
var a : Double = 20.2
Int(a)
// sayısaldan sözele dönüşüm
var b = 45.123
String(b)
//sözelden sayısala dönüşüm
var c = "2325656a"
var d = "123456789"

if let sayi1 = Int(c){
    print(sayi1)
}
if let sayi2 = Int(d){
    print(sayi2)
}
// Tuples konumuz budur.

var tuple = ("Süleyman", "Yazıcı", (23, "İstanbul", 1999))
print("Selam adım \(tuple.0) soyadım \(tuple.1). Yaşım \(tuple.2.0) \(tuple.2.1)'de yaşıyorum. \(tuple.2.2) doğumluyum.")
 

if 215 % 2 == 0{
    print("Çift sayı")
}else{
    print("tek sayı")
}
var hata = (404,"NOT FOUND")
var (kod,mesaj) = hata
print("---> \(hata.0)")
print("---->\(hata)")

var suleyman = 20

suleyman == 21 ? print("Süleyman 20 yaşındadır..") : print("Süleymanın yaşını ne bileyim ben")
var emre = 27
switch emre {
case 25 :
    print("Emre 25 yaşında")
case 26 :
    print("Emre 26 yaşında")
case 27 :
    print("Emre 27 yaşında")
case 28 :
    print("Emre 28 yaşında")
default:
    print("Bu çovuk ka yaşında aga")
}

var biber = "Biber"
var v = ("bir", "iki", "üç", "dört", "beş", "altı", "yedi", "sekiz", "dokuz", "on")
for a in 0...9{
    print("\(biber)\(v.9) severim ")
}
var ilkDeger = 50
var ikinciDeger = 0
var ucuncuDeger = -2
for i in stride(from: ilkDeger, through: ikinciDeger, by: ucuncuDeger){
   
    if i == 10{
        continue
       
        }
    print(i)
    }

var deger1 = 0
var deger2 = 50
var deger3 = 3
for j in stride(from: deger1, to: deger2, by: deger3){
    print(j)
    if j == 30{
        break
        
    }
}
/*var ahmet = 0
while ahmet <= 200{
    print("Ahmete \(ahmet) defa koyam")
    ahmet = ahmet + 5
}*/

var rastgele = Int(arc4random_uniform(10000))
var rastgele2 = Int(Int.random(in: 0...10000))

let sayi = 125.52
let nsayi = -50
ceil(sayi)
floor(sayi)
sqrt(sayi)
pow(sqrt(sayi), 2)
abs(nsayi)

let tarih = Date()

let takvim = Calendar.current

let yil = takvim.component(.year, from: tarih)
let ay = takvim.component(.month, from: tarih)
let gün = takvim.component(.weekday, from: tarih)
let saat = takvim.component(.hour, from: tarih)
let dakika = takvim.component(.minute, from: tarih)
let saniye = takvim.component(.second, from: tarih)


let metre = Measurement.init(value: 1000, unit: UnitLength.meters)
let kiloMetre = Measurement.init(value: 500, unit: UnitLength.kilometers)
let mile = metre.converted(to: .miles)
let miles = kiloMetre.converted(to: .miles)

let sicaklik = Measurement.init(value: 25, unit: UnitTemperature.celsius)
let fahrenheit = sicaklik.converted(to: .fahrenheit)
