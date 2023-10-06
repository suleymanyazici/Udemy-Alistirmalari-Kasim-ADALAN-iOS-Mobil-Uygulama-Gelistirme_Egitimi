class DersNot{
    var ad : String?
    var not : Int?
    init(ad: String, not: Int) {
        self.ad = ad
        self.not = not
    }
}
class Ogrenci {
    var ogrenciAd: String?
    var ogrenciSoyad: String?
}
var karne = [DersNot]()
var matematik = DersNot(ad: "Matematik", not: 95)
var kimya = DersNot(ad: "Kimya", not: 55)
var biyoloji = DersNot(ad: "Biyoloji", not: 100)
var edebiyat = DersNot(ad: "Edebiyat", not: 55)

karne.append(matematik)
karne.append(kimya)
karne.append(biyoloji)
karne.append(edebiyat)
var ortalama = 0
for not in karne{
    print("\(not.ad!)    : \(not.not!)")
    ortalama = (ortalama + not.not!)
}
ortalama = ortalama / karne.count
switch ortalama{
case 85...100:
    print("Tebrikler Taktir Belgesi Almaya Hak Kazandınız...")
case 70...84:
    print("Tebrikler Teşekkür Belgesi Almaya Hak Kazandınız...")
case 50...69:
    print("Sınıfı Zar Zor Geçtiniz Size Tebrik Yok...")
default:
    print("Yaşama Kardeşim")
}

if ortalama >= 85 && ortalama <= 100{
    print("Tebrikler Taktir Belgesi Almaya Hak Kazandınız...")
}else if ortalama >= 70 && ortalama <= 84{
    print("Tebrikler Teşekkür Belgesi Almaya Hak Kazandınız...")
}else if ortalama >= 50 && ortalama <= 69{
    print("Sınıfı Zar Zor Geçtiniz Size Tebrik Yok...")
}else{
    print("Yaşama Kardeşim")
    
}
