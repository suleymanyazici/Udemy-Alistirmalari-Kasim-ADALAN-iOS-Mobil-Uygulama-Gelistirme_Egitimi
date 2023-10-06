import UIKit

let meyveler : Set = ["Çİlek", "Armut", "Domates", "Elma", "Muz"]
var sayilar = Set<Int>()
var sehirler : Set<String> = ["İstanbul", "Bursa", "Sakarya", "Rize"]
		
sayilar.insert(20)
sayilar.insert(30)
sayilar.insert(40)

print(sayilar)
sayilar.isEmpty
sayilar.first
sayilar.count
sayilar.contains(20)
sayilar.contains(10)
sayilar.sorted()
sayilar.remove(20)
print(sayilar)
sayilar.removeAll()


for _ in meyveler {
    print(meyveler)
}



// set lere özgü terimler

let tekler : Set = [1, 3, 5, 7, 9]
let ciftler : Set = [0, 2, 4, 6, 8]
let asal : Set = [1, 3, 5, 7]

print(tekler.union(ciftler).sorted())
tekler.symmetricDifference(asal).sorted()
ciftler.subtracting(asal).sorted()
tekler.intersection(asal).sorted()
