//
//  ViewController.swift
//  Bildirim
//
//  Created by Suleyman YAZICI on 19.09.2023.
//

import UIKit
import UserNotifications//gerekli frameworks


class ViewController: UIViewController {
    
    var permissionControl = false
    let content = UNMutableNotificationContent()

    override func viewDidLoad() {
        super.viewDidLoad()

//Kullanıcı dan uygulamayı ilk açtığında bildirim için izin isteme -------------------------------------------------------
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge], completionHandler: {
            (granted, error) in
            
            self.permissionControl = granted
            
            if granted {
                print("İzin alma işlemi başarılı")
            }else{
                print("izin işlemi başarısız!!!!")
            }
            
        })
//--------------------------------------------------------------------------------------------------------------------------
    
    
//Bildirimin içeriğinin ayarlanması----------------------------------------------------------------------------------------
        content.title = "Başlık"
        content.subtitle = "Alt Başlık"
        content.body = "Mesaj"
        content.badge = 1
        content.sound = UNNotificationSound.default
        content.categoryIdentifier = "category"
//_-------------------------------------------------------------------------------------------------------------------------
        
// Bildirime aksiyon ekleme
        
        let yes = UNNotificationAction(identifier: "yes", title: "Yes", options: .foreground)
        let no = UNNotificationAction(identifier: "no", title: "No", options: .foreground)//Forgeround uygulamayı açar
        let delete = UNNotificationAction(identifier: "delete", title: "Delete", options: .destructive)// Destructive bildirimi kapatır
        
        let category = UNNotificationCategory(identifier: "category", actions: [yes,no,delete], intentIdentifiers: [],options: [])
//bildirime aksiyon eklenmesi için son olarak aşağıdaki kodlar gereklidir
        
        
        UNUserNotificationCenter.current().setNotificationCategories([category])// bununn yanı sıra bildirimin içinede eklenmesi gerek   42. satırda olduğu gibi
       
        //Ön planda çalışması ve actionları yakalaması için
        UNUserNotificationCenter.current().delegate = self
        
        
        
        

    }


    @IBAction func notificationButton(_ sender: Any) {
        if permissionControl{
            
            //Buradaki işlem kaç saniye sonra bildirim gelsin ve bu bildirim işlemi tekrarlansınmı
            // yani bir tür zamansal tetikleme
            let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 10, repeats: false)
            //_---------------------------------------------------------------------------------
            
            //Bildirim içeriğinin ve zamansal tetiklenmesinin bir isteğe dönüştürülmesi
            let notificationRequest = UNNotificationRequest(identifier: "Notification"//Tanımlayıcı
                                                            , content: content//İçerik
                                                            , trigger: trigger)// Zamansal tetikleme
            //Burada karşımıza iki seçenek çıkıyor birincisi yukarıdaki gibi saniyesel olaraj tetikleme
            //ikincisi ise Tarihesel tetikleme aşağıda örneği olduğu gibi
            
            /*var date = DateComponents()
            date.day = 29
            date.month = 4
            date.year = 2023
            date.hour = 15
            date.minute = 32*/
            
            //Tüm tarihler girilmek zorunda değildir istenirse sadece saat ve dakikada girilebilir
            
            //let trigger = UNTimeIntervalNotificationTrigger(dateMatching: date, repeats: true)
            
            //Bu şekilde tarih ilede tetikleme yapabiliriz
            
            //-------------------------------------------------------------------------------------
            
            //Bildirimin bildirim merkezine eklenmesi
            UNUserNotificationCenter.current().add(notificationRequest,withCompletionHandler: nil)
            
        }
    }
}
//Uygulama çalıştığı sırada yani ekranda açıkken na
extension ViewController : UNUserNotificationCenterDelegate{
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        
        completionHandler([.banner, . sound, .badge])
        
    }
    
    //Bildirime tıklamamve badge silme
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        let app = UIApplication.shared
        
        if(app.applicationState == .active){
            print("Ön planda bildirime tıklandı")
            app.applicationIconBadgeNumber = 0 // Badge sıfırlama
        }
        if(app.applicationState == .inactive){
            print("Arka planda bildirime tıklandı")
            app.applicationIconBadgeNumber = 0// Badge sıfırlama
        }
        
        // Bildirime eklenen aksiyonların yakalanması ve sonucunda işlem yapılması

        
        if response.actionIdentifier == "yes"{
            print("Evet seçildi")
        }
        if response.actionIdentifier == "no"{
            print("Hayır seçildi")
        }
        if response.actionIdentifier == "delete"{
            print("Delete seçildi")
        }
        
        completionHandler()
    }
    
    
    
}
