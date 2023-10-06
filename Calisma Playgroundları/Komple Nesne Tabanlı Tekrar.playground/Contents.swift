
// Hesaplama Özelliği

/* Hesaplama değeri döndüren get ve set
class Ucret {
    var maas = 10000.0
    var bonus = 1.10
    var haftalık : Double{
        get {
            return (maas * bonus) / 52
        }
        set (yeniHaftalikMaas) {
            self.maas = yeniHaftalikMaas * 52
        }
    }
    
    var yarim :Double{
        get{
            return (maas / 2)
        }set(yeniMaas){
            self.maas = (yeniMaas / 2)
        }
    }
}

var m = Ucret()

m.haftalık = 5000
print(m.maas)


var y = Ucret()
y.yarim
y.yarim = 520000
print(y.maas)
*/
//---------------------------------------------------------------------
/* Geri Değer Döndüren Fonksiyonlar
class Ucret {
    
    var maas : Double?
    var gunlukMaas : Double?
    func gunluk(maas : Double) -> Double {
        gunlukMaas = maas / 30
        return gunlukMaas!
    }
}
var ali = Ucret()
ali.gunluk(maas: 9000 )
ali.gunlukMaas
*/
//---------------------------------------------------------------------
//

/*
class Araba{
    var renk: String?
    var kasaTipi: String?
    var hiz = 0
    var calisiyorMu = false
    
    init(renk: String, kasaTipi: String) {
        self.renk = renk
        self.kasaTipi = kasaTipi
    }
    
    func calistir(){
        calisiyorMu = true
    }
    
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    
    func hizlan(kacKm: Int){
        hiz = hiz + kacKm
    }
    func yavasla(kacKm: Int){
        hiz = hiz - kacKm
    }
    
    func bilgiAl(){
        if calisiyorMu == true{
            print("Araç Çalışır durumda ve hızınız \(hiz) ")
            print("Aracınız \(renk!)\nKasa Tipi \(kasaTipi!)")
            print("-------------------------------------------")
        }else{
            print("Araç çalışmıyor bu yüzden hızınız \(hiz)")
            print("Aracınız \(renk!)\nKasa Tipi \(kasaTipi!)")
            print("-------------------------------------------")
        }
    }
}

var jetta = Araba(renk: "Kırmızı", kasaTipi: "Sedan")
jetta.bilgiAl()
jetta.calistir()
jetta.bilgiAl()
jetta.hizlan(kacKm: 100)
jetta.bilgiAl()
jetta.yavasla(kacKm: 20)
jetta.bilgiAl()
*/
//----------------------------------------------------------------------------
// LAZY (Tam mantığını anlayabilmiş değilim)
/*
class Lazy{
    lazy var depo = 20
}

*/
//----------------------------------------------------------------------------
//Hesaplama Özelliği
//Burada clossure kullanılır bu konuyu ilerde tekrar edeceğimizden şimdi aklında kalanlar sana yeter
/*
class Ucret{
    var maas = 150000.0
    var bonus = 1.15
    
    var hesapla : Double {
        get {
            return (maas * bonus) / 52
        }
        set(yeniHaftalikMaas){
            self.maas = yeniHaftalikMaas * 52
        }
    }
}

var haftalik = Ucret()

haftalik.hesapla
haftalik.hesapla = 40000
print(haftalik.maas)
*/

//-----------------------------------------------------------------------------
//Geri değer döndüren fonksiyona örnek
/*
class Geri{
    var hiz = 0
    
    func dondur(yeniHiz: Int) -> Int {
        hiz = hiz + yeniHiz
        return hiz
    }
}
var arac = Geri()
arac.dondur(yeniHiz: 100)
print(arac.hiz)
var aracb = Geri()
print(aracb.hiz)
*/
//-----------------------------------------------------------------------------
//Fonksiyonların Parametre Alması
/*
class Parametre {
    var deger : Int?
    
    func giris(deger2: Int, deger3: Int) {
        deger = deger2 + deger3
        print(deger!)
    }
}
var a = Parametre()
a.giris(deger2: 50, deger3: 70)
*/
//-----------------------------------------------------------------------------
//Fonksiyonların Aşırı Yüklenmesi --Overloading--
// Buradaki durum aynı isimde fonksiyonu birden fazla kere kullanmak fakat metodların içerisindeki parametrelerin farklı olamsı gerek aksi taktirde bu işlemi kullanamayız farklı parametreleri bulunacağı için fonksiyonları çağırdığımız zaman hangi parametrelere sahip fonksiyonu kullanırsak o fonskiyon içerisindeki işlemler yapılıp bize verilir.(aynı isimde olabilir fakat aynı isimde iki fonksiyon içerisindeki parametrelerin türleri farklı olmalıdır
/*
class Overloading{
    func veri(girdi1: Int, girdi2: Int){
        print("Değerlerin ikiside Int --> \(girdi1)-\(girdi2)")
    }
    func veri(girdi1: Int, girdi2: Double){
        print("Değerlerin biri Int biri Double --> \(girdi1)-\(girdi2)")
    }
    func veri(girdi1: Double, girdi2: Double){
        print("Değerlerin ikiside Double --> \(girdi1)-\(girdi2)")
    }
    func veri(deger: Int, deger1: Int){
        print("Değerlerin lerin ismi farklı fakat türleri aynı bu şekildede kullanabiliriz --> \(deger)-\(deger1)")
    }
}

var a = Overloading()
a.veri(deger: 20, deger1: 25)
a.veri(girdi1: 20, girdi2: 5)
a.veri(girdi1: 20, girdi2: 50.0)
a.veri(girdi1: 20.0, girdi2: 10.0)
*/
//--------------------------------------------------------------------------------

//Variadic Parametreler
// Variadic parametrelerin olayı istediğimiz kadar değer girebilmemizdir girdiğimiz değerler örnek verecek olursak aşağıda bakalım
/*
func Variadic(sayilar: Int...) -> Int{
    var toplam = 0
    for i in sayilar{
        toplam = toplam + i
    }
    return toplam
}
var a = Variadic(sayilar: 10, 20, 30, 40, 50, 1, 4, 2)
print(a)
*/
//--------------------------------------------------------------------------------
//Birden fazla geri dönüş değeri olan fonksiyonlar
// Bu fonksiyonlarda birden fazla geri dönüş değeri bulunur biz hangisini seçersek sistem onu bize geri döndürür

/*
    func ciftDonus(sayilar: [Int]) -> (toplam:Int, faktoriyel:Int) {
        var toplam = 0
        var faktoriyel = 1
        
        for i in sayilar{
            toplam = toplam + i
            faktoriyel = faktoriyel * i
        }
        return (toplam, faktoriyel)
    }

var dizi = [1,2,3,4,5,6,7,8,9]
var sonuc = ciftDonus(sayilar: dizi)
sonuc.faktoriyel
sonuc.toplam
*/
//--------------------------------------------------------------------------------
// Geri dönüş değerinin optional olması ( Bu sayede daha safe bir yazılım ürünü ortaya koyabiliriz )
/*
func hesapla(sayi1: Int, sayi2: Int) -> Int? {
    let islem = sayi1 + sayi2
    return islem
}
var a = hesapla(sayi1: 10, sayi2: 20)
if let t = a{
    print(t)
}
*/
//----------------------------------------------------------------------------------

// Fonsksiyonlarda Global ve Local parametreler

// Aşağıda verdiğim örnekte sayi şeklinde olanlar global parametrelerdir bu parametreler fonksiyon dışındanda kullanılabildiği için global parametreler olmaktadırlar s olanlar ise lokal parametrelerdir bunlar sadece fonksiyonun içerisinde işlevlilerdir fonksiyon dışından kullanılamazlar.
/*
func hesapla(sayi1 s1: Int, sayi2 s2: Int) -> Int {
    let toplam = s1 + s2
    
    return toplam
}
var a = hesapla(sayi1: 10, sayi2: 20)
print(a)
*/
//------------------------------------------------------------------------------------
//Geldik Inıtılazitiona bu arkadaş init ile açğırılır amacıda class yada struct içerisindeki tanımlanan değişkenleri derli toplu bir düzene sokmak istersen boş bırakırız o zamanda amelelik yapıyo oluruz örneklere geçelim
/*
class InitFirst{
    var renk : String?
    var tip : String?
    var sonHız : Int?
    //burda boş bir init de oluşturabiliriz ama sonuç değişmez içi dolu olmadıkça
    
    // bu amele versiyondur görelim
}
var a = InitFirst()
a.renk = "Kırmızı"
a.sonHız = 100
a.tip = "Sedan"
// bak nasılda amele gib i herşeyi uzun uzun yazdık bide initli bir tanımlama yapalım


class InitSecond{
    var renk : String?
    var tip : String?
    var hiz : Int?
    
    init(renk: String, tip: String, hiz: Int) {
        self.renk = renk
        self.hiz = hiz
        self.tip
        // buda peşin satn versiyon amele gibi bütün tanımlamaları faklı satırlarda yapmıyoruz tek satırda yapıp bitiriyoruz
    }
}
var b = InitSecond(renk: "Kırmızı", tip: "Sedan", hiz: 100)
*/
//Class ve Struct farkı ile devam edelim
// Class lar değer tiplidir be kalıtım ları bulunmaktadır ----Struct lar referans tiplidir kalıtım bulunmamaktadır nedir bu kalıtım ve değer referans tipleri hemen inceleyelim
/*
class Ogrenci{
    var ad : String?
}
var ogrenci1 = Ogrenci()
ogrenci1.ad = "Mehmet"
print(ogrenci1.ad!)
var ogrenci2 = ogrenci1
print(ogrenci2.ad!)
ogrenci2.ad = "İsmet"
print(ogrenci1.ad!, ogrenci2.ad!)
//Görüdğümüz üzere 2. öğrencinin adını değiştirmeme rağmen 1.öğrenci bu durumdan etkilenmiştir ve ismi değişmiştir
// Gelelim Struct işlemine
struct Kedi{
    var renk : String?
}
var kedi1 = Kedi()
kedi1.renk = "Sarı"
print(kedi1.renk!)
var kedi2 = kedi1
print(kedi2.renk!)
kedi2.renk = "Beyaz"
print(kedi1.renk!, kedi2.renk!)
//Buradada göreceğimiz üzere 2. kedinin renginde değişiklik yapınca nasılda rengi değişti ama 1. kediye hiçbirşey olmadı
*/
//Static olayı sınıf aerişmek istenirken o sınıfa ait herhangi bir nesne oluşturmadan bu işlemi yapmamızı sağlar ama hafıza açısından çok sağlıklı değildir çok kullanmaya gerek yok
/*
class Sınıf{
    static var a = 10
    
    static func topla(){
        print("yazdır")
    }
}
print(Sınıf.a)
Sınıf.topla()
*/

//enum ifadesi bir ifadeye o ifadenin hash kodu gibi istediğimiz karmaşık şeyi atayıp daha sonra o ifadeyi karşımıza getirebiliriz
/*
enum Renkler{
    case beyaz
    case siyah
}
var renk = Renkler.beyaz
switch renk{
case .beyaz:
    print("beyaz seçildi")
case .siyah:
    print("siyah seçildi")
}
*/

 //enum farklı bir örnek
/*
enum boy {
    case kısa
    case orta
    case uzun
    
    init (boy: Int){
        switch boy{
        case 0..<150: self = .kısa
        case 150..<200: self = .orta
        case 200..<250: self = .uzun
        default: self = .orta
            print("Tanımlanamayan boy aralığı")
        }
    }
}
var ahmet = boy(boy: 175)
print(ahmet)
*/

// Composition konusuna gelecek olursak bu veritabanlarında in komutlarıyla başka veritabanındaki veriyi kullanmak gibi birşey oluyor işin asıl olayı bir kişinin kimlik bilgileriyle kişinin ikametgah bilgilerini farklı class larda tutup ama ilişkisel olarak birbirleriyle haberleştirme olarak kullanabiliriz.
/*
class Kimlik{
    var ad : String?
    var soyad : String?
    var tc : Int?
    var adres : Ikametgah?
    
    init(ad: String, soyad: String, tc: Int, adres: Ikametgah){
        self.ad = ad
        self.soyad = soyad
        self.tc = tc
        self.adres = adres
    }
}

class Ikametgah {
    var il : String?
    var ilce : String?
    var mahalle : String?
    
    init(il: String, ilce: String, mahalle: String){
        self.il = il
        self.ilce = ilce
        self.mahalle = mahalle
    }
}
var adres1 = Ikametgah(il: "İstanbul", ilce: "Sultangazi", mahalle: "Cebeci")
var adres2 = Ikametgah(il: "İstanbul", ilce: "Sultangazi", mahalle: "İsmetpaşa")
var adres3 = Ikametgah(il: "İstanbul", ilce: "Sultangazi", mahalle: "Cebeci")


var eleman1 = Kimlik(ad: "Talha", soyad: "Öztürk", tc: 4545454545, adres: adres1)
var eleman2 = Kimlik(ad: "Süleyman", soyad: "Yazıcı", tc: 4545454554, adres: adres2)
var eleman3 = Kimlik(ad: "İsmail", soyad: "Dursun", tc: 3454545454545, adres: adres3)

var elemanlar = [Kimlik]()
elemanlar.append(eleman1)
elemanlar.append(eleman2)
elemanlar.append(eleman3)
print("----------------------------------------------------------------------------------------------------------")
for i in elemanlar{
    print("\(i.ad!) \(i.soyad!) adlı şahsın kimlik numarası :  \(i.tc!) dir şahıs \(i.adres!.il!) / \(i.adres!.ilce!) / \(i.adres!.mahalle!) mahallesinde ikamet etmektedir.")
    print("----------------------------------------------------------------------------------------------------------")
}
*/
/*
enum UlasimDurumu: String {
    case yolcuTasima = "Yolcu taşıyabilir"
    case yolcuTasimama = "Yolcu taşıyamaz"
}

enum TasimaDurumu: String {
    case yukTasima = "Yük taşıyabilir"
    case yukTasimama = "Yük taşıyamaz"
}

class Arac {
    var ulasim: UlasimDurumu?
    var tasima: TasimaDurumu?
    
    init(ulasim: Bool, tasima: Bool) {
        self.ulasim = ulasim ? .yolcuTasima : .yolcuTasimama
        self.tasima = tasima ? .yukTasima : .yukTasimama
    }
}

class Araba : Arac{
    var tip : Arac?
    var sekil : String?
    var renk : String?
    var tekerSayisi : Int?
    
    init(sekil: String,renk: String, tekerSayisi: Int, ulasim: Bool, tasima: Bool){
        self.renk = renk
        self.sekil = sekil
        self.tekerSayisi = tekerSayisi
        super.init(ulasim: ulasim, tasima: tasima)
    }
}

class Mercedes : Araba{
    var motorHacmi : Double?
    var yolcuKapasitesi : Int?
    var yukKapasitesi : Double?
    
    
    init(sekil :String, motorHacmi: Double,yolcuKapasitesi: Int, yukKapasitesi: Double,renk: String, tekerSayisi: Int, ulasim: Bool, tasima: Bool) {
        self.motorHacmi = motorHacmi
        self.yolcuKapasitesi = yolcuKapasitesi
        self.yukKapasitesi = yukKapasitesi
        super.init(sekil: sekil, renk: renk, tekerSayisi: tekerSayisi, ulasim: ulasim, tasima: tasima)
    }
}

var mercedesTır = Mercedes(sekil: "Tır", motorHacmi: 13, yolcuKapasitesi: 1, yukKapasitesi: 50000, renk: "Gri", tekerSayisi: 6, ulasim: true, tasima: true)
print("Araç \(mercedesTır.sekil!) tipinde bir araçtır \nMotor hacmi \(mercedesTır.motorHacmi!) litredir \nAraç \(mercedesTır.ulasim!)  \n\(mercedesTır.yolcuKapasitesi!) adet yolcu taşımaktadır \nAraç \(mercedesTır.tasima!) \nAracın yük kapasitesi \(mercedesTır.yukKapasitesi!) kg dir \nAraçta \(mercedesTır.tekerSayisi!) adet teker bulunmaktadır \nArac \(mercedesTır.renk!) renktedir")
*/

