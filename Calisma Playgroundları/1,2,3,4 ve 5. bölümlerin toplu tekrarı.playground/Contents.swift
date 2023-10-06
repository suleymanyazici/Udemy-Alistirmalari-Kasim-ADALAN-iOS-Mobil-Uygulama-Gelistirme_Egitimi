import UIKit

// saçma tanımlama
var sayi1 = 40, harf = "f", kelime = "Merhaba"

print(sayi1)
print(harf)
print(kelime)
var toplam = String(sayi1) + kelime
print(toplam)

let pi = 3.14

print("\\ \t \" \n \'")
var a : Int = 5

var b = a + 5
    print(b)

a += 3
    print(a)

// Tür Dönüşümü
//----Sayısaladan sayısala
var x = 25.5546846464465468
var y = Int(x)
var z = Float(x)

//-----Sayısalda sözele dönüşüm
var q = 53
var w = "Rize"
print(w, Int(q))

// Asıl minnak sıkıntı olan ise sözelden sayısala çünkü içerisinde her zaman sadece sayı bulunmayabilir  bunuda herşeyi çözen ve nasıl çözdüğünü anlamadığım if let çözüyor
var e = "53"
var r = "53T"

if let sayiE = Int(e){
    print(sayiE)
}
if let sayiR = Int(r){
    print(sayiR)
}

// Geldik  Tuple ye  tuplede gizli index vardır ve 0 dan başlar ilk değer 0. index demek oluyor buda
var tuple1 = ("Suleyman", 53,("Rize", 25.5454))

var (isim, memleketPlaka,(memleket, buNeOlum)) = tuple1
/*var isim = tuple1.0
var memleketPlaka = tuple1.1
var memleket = tuple1.2.0
var buNeOlum = tuple1.2.1*/

print(isim)


// Standart programlama yapıları
//if else koşul sağlanır ise çalışır

if memleketPlaka == 45{
    print("Memleket = ne bilem ")
}else if memleketPlaka == 53{
    print("memleket Rize")
}else{
    print("bune oglum mına")
}

if memleket == "Rize" && memleketPlaka == 52{
    print("ula hemşo")
}else{
    print("bu kim olum mına")
}

memleketPlaka == 53 ? print("Reis Rizeli") : print("Bu kim olum mına")

//Switch Case
var p = "tarbızon"
switch p{
case "Rize" :
    print("Rizeli")
case "tarbızon":
    print("göttür ne diyeyim")
default:
    print("bu kim olum mına")
}


// Dögülere geldik dögüler
// for dögüsüyle başlayalım
for i in 1...5{
    print(i)
}
print("................................")
for i in stride(from: 1, through: 5, by: 1){
    print(i)
}
print("................................")
for i in stride(from: 1, to: 5, by: 1){
    print(i)
}
print("................................")
// Geldik while döngüsüne
var index = 0

while index <= 20{
    print(index)
    index = index + 4
}
// Şimdide Break-Continue ile minnak şeyler yapalım

//break---- burada akkış tamamen kesilir ve döngü dışına çıkılır

for i in 1...50{
    if i == 3 {
        break
    }
    print(i)
}

//continue--- burada ise akışta koşul sağlandığında sağlanan değer atlanır ve döngüye devam edeilir

var deger = 0
for i in 1...5{
    if (i == 3){
        continue
    }
    print(i)
}

// Birtakım hazır komutlar
// Rastgele sayı üretme
var rastgele = Int.random(in:0...10)


// Bir takım matematiksel ifadeler
var ceilOrnek = ceil(3.81234)
var floorOrnek = floor(3.1241235415)
var sqrtOrnek = sqrt(128)
var powOrnek = pow(3, 2)
var absOrnek = abs(-123651726)
var maxOrnek = max(100000000, 9999999)
var minOrnek = min(100000000, 9999999)

// Tarih filtrelemeleri

let tarih = Date()
let takvim = Calendar.current
// Bu şekildedede oluyo denedim sadece let yıl = Calendar.current.component(.year, from: tarih)
let year = takvim.component(.year, from: tarih)
let month = takvim.component(.month, from: tarih)
let day = takvim.component(.day, from: tarih)
let hour = takvim.component(.hour, from: tarih)
let minute = takvim.component(.minute, from: tarih)
let second = takvim.component(.second, from: tarih)


// Ölçü birimleri her türden ölçüler bulunuyor neredeyse


let metre = Measurement.init(value: 50, unit: UnitLength.meters)
let khz = Measurement.init(value: 500, unit: UnitFrequency.kilohertz)
// buradaki değiştirilen alan Unit den sonraki kısım bu kısımın keyfine göre istediğimiz tanımı yapabiliyoruz

//aynı azamanda dönüşüm yapmakda mevcut
let ghz = khz.converted(to: UnitFrequency.gigahertz)


// Geldik BABA Konuya OPTİONAL anlaması zor ama anlaşılmazı zorunlu bir konu örneklerle daha iyi anlıyacaz ama şimdilik normal anlasak yeter

var olmayanDeger : String?

olmayanDeger = "anan"

print(olmayanDeger!)

//Optional Binding
var str : String?
//str = "Merhaba Bro"

if str != nil {
    print(str!)
}else{
    print("Gardaş değer nil ")
}

if let temp = str{
    print(temp)
}else{
    print("Değer nil içeriyor")
}



//*-*-*-*-*-*-*-*-*---*-*-*-*-COLLECTİON LAR-*-*-*-*---*-*-*-*-*--*-*-*-*-*
//------------------Array lar ----------------------
// ARRAY TANIMLAMA
//--Array lar aynı türde verileri tutar
//- index no su otomatik olarak sırayla atanır
//- Array tanımlarken türü belirtmek tercih edilir

var dizi1 = [Int]() //Boş bir dizi tanımlarken
dizi1.append(53) // boş diziye bu şekilde ekleme yapılır (dizilerde   .append   ile)

var dizi2 = [1, 2, 3, 4]// bu şekilde tür belirtmesekde olur sonuçta tanımlıyor otomatik ama ben belirtmeyi tercih ederim
var dizi3 : [Float] = [10.3, 10.456, 10.123123]
var dizi4 = [Int](repeating: 0, count: 3) //3 defa 0 tekrarlayan bir dizi oluştur gibisine

// ARRAY LARDA VERİLERE ERİŞME OLAYI NASILDIR
var diziMeyve : [String] = ["Çilek", "Muz", "Ayva", "Elma", "Armut", "Portikal"]
diziMeyve[0]
var str1 = diziMeyve[3]
print(str1)
print(diziMeyve[4])

// ARRAY A VERİ EKLEME------iki şekildir
diziMeyve.append("Karpuz")
diziMeyve.insert("Zencefil", at: 7)
for i in 0...6{
    print("Meyve index sırası : \(i) , Meyve adı: \(diziMeyve[i]) ")
}

// MEVCUTTA BULUNAN VERİNİN ÜZERİNE DEĞER YAZDIRMA

diziMeyve[6] = "Üzüm"
print(diziMeyve)


// DÖNGÜ İLE ARRAYDAN VERİ ÇEKME

for meyve in diziMeyve{
    print("Meyveler : ", meyve)
}

//-----diyelimki numaralarıyla birlikte çekmek istiyoruz
for (index,meyve) in diziMeyve.enumerated(){
    print("Dizi numarası = \(index), Dizi İçeriği : \(meyve)")
}

// BAZI HAZIR ARRAY KOMUTLARI

diziMeyve.isEmpty
diziMeyve.count
diziMeyve.first
diziMeyve.last
diziMeyve.reverse()
diziMeyve.sort()
diziMeyve.remove(at: 7)
diziMeyve.removeAll()


//-----------------SET LER----------------------
//Set Array larla aynı özelliklere sahiptir ancak içine eklenen veriler düzensiz halde bulunur
//index değeri takibi zordur

// SET tanımlama
var sayilar2 = Set<Int>()//boş bir seti bu şekilde tanımlayabiliriz
var sehirler : Set<String> = ["Bursa", "İstanbul", "Aydın" , "İzmir", "Rize"]

//Bir takım SET işlemleri
sayilar2.insert(10)// herhangi bir değer insert ile eklenir set te ekleme işlemi insert le olur
sayilar2.insert(20)
sayilar2.insert(30)// şimdi biz burada 3 adet tanım yaptık ama bir sıkıntı var 3 tanımllamada karmaşık olarak tutulur
print(sayilar2)// sayilar2 dizisini yazdırdığımızda bunu gayet güzel bir biçimde görüyoruz

// işlemlere devam edelim
sayilar2.isEmpty//bir bool değerle boş dolu kontrolü yapar
sayilar2.contains(10)//veriyi içeriyormu bunun kontrolü yapılır
sayilar2.sorted()//küçükten büyüğe sıralama yapar
sayilar2.remove(10)// değeri indexe göre değil kendi değerini yaazarak set içerisinden silme
sayilar2.removeAll()

// Set verilerinin alınması
var sayilar : Set<Int> = [10, 20, 30]
for s in sayilar {
    print(s)
}

// Set metoduna özgü bazı metodlar

let tekler : Set = [1,3,5,7,9]
let ciftler : Set = [0,2,4,6,8]
let asal : Set = [2,3,5,7]

print(tekler.union(ciftler).sorted())
print(tekler.intersection(asal).sorted())
print(tekler.subtracting(asal).sorted())
print(tekler.symmetricDifference(asal).sorted())



//-*-*-*-*-*-*-*-*-*-*-* DİCTİONARY *-*-*-*-*-*-*-*-*-*-*-*-*-*-**

//- Bir değer ve anahtardan oluşur (key-value)
//-boş hali [:] şeklindedir

var dic1 = [Int:String]()
let dic2 = [3.14 : "pi", 2.71 : "e"]
var dic3 : [Int : String] = [1 : "Bir", 2 : "İki", 3 : "Üç", 4 : "Dört", 5 : "Beş"]

var iller = [Int : String]()

//Veri Ekleme
iller[34] = "İstanbul"
iller[53] = "Rize"
iller[81] = "Düzce"
iller[16] = "Bursa"
print(iller)
// Veri Güncelleme
iller[16] = "Yeni Bursa"
print(iller)

//Veri okuma
print(iller[34]!)// değerin içinin boş gelmesine karşılık olark optional değer istiyor
/*
for (character, deger) in iller{
    print("Plaka Kodu : \(character) Şehir İsmi : \(deger)")
}*/
;

// Veri Silme

iller.removeValue(forKey: 16)

//Dictionary

iller.isEmpty//içerisi boşmu dolumu değer döndürür boş true dir
iller.count// içeriyi sayar
iller.first//Birinci içeriği verir
var tersDic = iller.reversed()// Veriler Tersine Döner

//Dictionary e dönüştürme
var dersler = ["Kimya", "Biyoloji", "Matematik"]
var notlar = [85, 90, 50]
var dersNotları = Dictionary(uniqueKeysWithValues: zip(notlar, dersler))
for (not, ders) in dersNotları {
    print("Not: \(not) ------> Ders: \(ders)")
}


// Dictionary i nasıl parçalarız
var ilIsmi = [String](iller.values)
print(ilIsmi)
var plaka = [Int](iller.keys)
print(plaka)

//Dictionary Filtreleme
var okul = [170 : "Ahmet", 280 : "Mehmet", 350 : "Süleyman", 440 : "Umut", 560 : "Furkan"]
var sonucDic1 = okul.filter({$0.key < 400})
var sonucDic2 = okul.filter({$0.value == "Mehmet" || $0.value == "Ahmet" })
