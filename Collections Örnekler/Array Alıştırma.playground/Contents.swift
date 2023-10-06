import UIKit

var dizi1 = [Int]()

var dizi2 = [1, 2, 3]

var meyveler : [String] =  ["Elma", "Armut", "Çilek", "Ananas", "Papaya", "Kerez"]

var dizi3 = [Int](repeating: 0, count: 4)

var str1 = meyveler[3]

print(meyveler[3])

meyveler.append("Vişne")

meyveler[1] = "Üzüm"

print(meyveler)

for meyve in meyveler {
    print("Sonuç : \(meyve)")
}

for (index, meyve) in meyveler.enumerated(){
    print("İndex \(index)'deki değer \(meyve)'e eşittir.")
}

meyveler.insert("Karayemiş", at: 1) // at kısmında array içindeki index numarası kullanılır

meyveler.isEmpty
meyveler.count
meyveler.first
meyveler.last
meyveler.reverse()
meyveler.sort()
meyveler.remove(at: 2)
print(meyveler)
meyveler.removeAll()
print(meyveler)
