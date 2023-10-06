import UIKit

var dersler = [String]()
var notlar = [Int]()


dersler.append("Matematik")
notlar.append(80)

dersler.append("Türkçe")
notlar.append(100)

dersler.append("Edebiyat")
notlar.append(50)

dersler.append("Türk Dili")
notlar.append(45)

dersler.append("Beden Eğitimi")
notlar.append(100)

dersler.append("Termodinamik")
notlar.append(10)

var toplam = 0
for i in 0...(dersler.count-1){
    print("\(dersler[i]) : \(notlar[i])" )
    toplam = toplam + notlar[i]
}
print("Öğrencinin yıl sonu not ortalaması : \(toplam/notlar.count)")
