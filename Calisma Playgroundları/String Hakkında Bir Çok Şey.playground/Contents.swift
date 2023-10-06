import UIKit
/*
var str1 = "Merhaba"
var str2 = String("Merhaba Dünya")
var str3 = """
Merhaba Nasılsınız
Bu Bir Eğitim Videosu
Ayağını Denk Al
"""

print(str1)
print(str2)
print(str3)


if str1.isEmpty{
    print("Bura Boş Emmi")
}else{
    print("Buralar Dolu Emmi")
}


print(str1 + str2)



var str4 = "\(str1) yapram"


str4.count


if str1 == str2{
    print("Aynılar ellaam")
}else{
    print("Aynı değiller ellaam")
}


for i in str4{
    print(i, terminator: "*")
}

var str10 = "Yapraaaam"
str10.remove(at: str1.index(str1.startIndex, offsetBy: 5))

if str10.contains("ra"){
    print("skip attık bi kenara")
}
*/


var str100 = "Merhaba"

var harfler = [Character]()

for i in str100{
    print(i)
    harfler.append(i)
}

for a in stride(from: (harfler.count - 1), through: 0, by: -1){
    print(harfler[a] , terminator: "")
}
