import UIKit

var sayilar = [1, 2, 3, 4, 5, 6]

for (index, sayi) in sayilar.enumerated(){
    let sonuc = sayi * 2
    sayilar[index] = sonuc
}
print(sayilar)
