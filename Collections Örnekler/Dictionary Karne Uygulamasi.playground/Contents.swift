import UIKit

var dersNotlari = [Int : String]()

dersNotlari[95] = "Matematik"
dersNotlari[65] = "Türkçe"
dersNotlari[75] = "Fizik"
dersNotlari[30] = "Teknoloji Ve Tasarım"
dersNotlari[45] = "Termodinamik"
dersNotlari[100] = "Diferansiyel Denklemler"

for (key, value) in dersNotlari {
    print("\(value) dersinden \(key) puan aldınız")
}
