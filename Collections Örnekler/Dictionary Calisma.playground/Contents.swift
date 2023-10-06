import UIKit


var dic1 = [Int : String]()
var dic2 = [3.14 : "Pi", 2.71 : "e"]
var dic3 : [Int : String] = [1 : "Bir", 2 : "İki", 3 : "Üç"]


//Veri Ekleme
var iller = [Int : String]()
iller[34] = "İstanbul"
iller[53] = "Rize"

print(iller)
iller[53] = "Yeni Rize"
iller.updateValue("Yeni İstanbul", forKey: 34)
print(iller)
	
for (key, value) in iller{
    print("Plaka : \(key), İl adı : \(value)")
}

iller.removeValue(forKey: 34)
print(iller)

iller[34] = "İstanbul"
iller[16] = "Bursa"
print(iller)

iller.isEmpty
iller.count
print(iller.capacity)
iller.first
print(iller.customMirror)
print(iller)
iller.removeAll()
