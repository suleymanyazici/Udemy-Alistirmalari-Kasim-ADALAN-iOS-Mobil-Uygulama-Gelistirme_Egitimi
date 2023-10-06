import UIKit

class Count{
    func say(harf:Character, kelime:String){
        var sayac = 0

        for harf1 in kelime{
            
            if harf == harf1{
                sayac = sayac + 1
            }
        }
        print(sayac)
    }
}
var girdi = Count()
print(girdi.say(harf: "h", kelime: "hahahahahahahhahaaha"))
