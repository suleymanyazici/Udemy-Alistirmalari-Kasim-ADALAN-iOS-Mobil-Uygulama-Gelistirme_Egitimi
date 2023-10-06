class Alan{
    var isciAlan : String?
    var makine : String?
    init(isciAlan : String, makine : String) {
        self.isciAlan = isciAlan
        self.makine = makine
    }
}
class Isci{
    var isciAd : String?
    var isciSoyAd : String?
    var isciTel : Int?
    var isciNo : Int?
    var alanAdi : Alan?
    
    
    init(isciAd: String, isciSoyAd: String, isciTel: Int, isciNo: Int, alanAdi: Alan ) {
        self.isciAd = isciAd
        self.isciSoyAd = isciSoyAd
        self.isciTel = isciTel
        self.isciNo = isciNo
        self.alanAdi = alanAdi
    }
}

var enjeksiyon1 = Alan(isciAlan: "Enjeksiyon", makine: "Enjeksiyon1")
var enjeksiyon2 = Alan(isciAlan: "Enjeksiyon", makine: "Enjeksiyon2")
var enjeksiyon3 = Alan(isciAlan: "Enjeksiyon", makine: "Enjeksiyon3")
var enjeksiyon4 = Alan(isciAlan: "Enjeksiyon", makine: "Enjeksiyon4")
var kalıphane1 = Alan(isciAlan: "Kalıphaen", makine: "CNC1")
var kalıphane2 = Alan(isciAlan: "Kalıphane", makine: "CNC2")
var kalıphane3 = Alan(isciAlan: "Kalıphane", makine: "CNC3")
var kalıphane4 = Alan(isciAlan: "Kalıphane", makine: "Torna1")
var kalıphane5 = Alan(isciAlan: "Kalıphane", makine: "Klavuz")



var murat = Isci(isciAd: "Murat", isciSoyAd: "Abi", isciTel: 5555555555, isciNo: 1, alanAdi: kalıphane4)
var ramazan = Isci(isciAd: "Ramazan", isciSoyAd: "Kanks", isciTel: 5555555554, isciNo: 2, alanAdi: kalıphane1)
var ogun = Isci(isciAd: "Ogün", isciSoyAd: "Keles", isciTel: 5555555553, isciNo: 3, alanAdi: kalıphane2)
var idris = Isci(isciAd: "İdris", isciSoyAd: "Kanks", isciTel: 5555555552, isciNo: 5, alanAdi: kalıphane5)
var irfan = Isci(isciAd: "İrfan", isciSoyAd: "Abi", isciTel: 5555555551, isciNo: 0, alanAdi: kalıphane3)

var ercan = Isci(isciAd: "Ercan", isciSoyAd: "Abi", isciTel: 5555555550, isciNo: 6, alanAdi: enjeksiyon1)
var recep = Isci(isciAd: "Recep", isciSoyAd: "Abi", isciTel: 5555555556, isciNo: 7, alanAdi: enjeksiyon2)
var mehmet = Isci(isciAd: "Mehmet", isciSoyAd: "Abi", isciTel: 5555555557, isciNo: 8, alanAdi: enjeksiyon3)
var erdem = Isci(isciAd: "Erdem", isciSoyAd: "Abi", isciTel: 5555555558, isciNo: 9, alanAdi: enjeksiyon4)
var isciler = [Isci]()
isciler.append(murat)
isciler.append(ramazan)
isciler.append(ogun)
isciler.append(idris)
isciler.append(irfan)
isciler.append(ercan)
isciler.append(recep)
isciler.append(mehmet)
isciler.append(erdem)
isciler.sort(by: {$0.isciNo! < $1.isciNo!})
for i in isciler{
    print("\(i.isciNo!) - \(i.isciAd!) \(i.isciSoyAd!) --  TelNo : \(i.isciTel!) -- Çalışma Alanı : \(i.alanAdi!.isciAlan!) -- Çalışılan -- Makine : \(i.alanAdi!.makine!)")
}
