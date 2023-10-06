//
//  ViewController.swift
//  DatePicker ve TimePicker
//
//  Created by Suleyman YAZICI on 27.07.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var timePickerTextLabel: UITextField!
    @IBOutlet weak var datePickerTextLabel: UITextField!
    
    var datePicker : UIDatePicker?
    override func viewDidLoad() {
        super.viewDidLoad()
        datePicker = UIDatePicker()                // nesne mize bir datepicker aktardık
        datePicker?.datePickerMode = .date         //datepickerimize nasıl bir dateppicker olduğunu söyledik
        datePickerTextLabel.inputView = datePicker//burada ise textlabele tıklayınca ne olacağını yani datepickerin açılacağını belirtiyoruz
        //Bu kısıma kadar olan kısımda sadece görsel olarak değer vardır içerdeki tarih seçimi herhangi bir işe yaramaz.
        
        datePicker?.addTarget(self, action: #selector(degisimiYakla(datePicker: )), for: UIControl.Event.valueChanged)

    }

    @objc func degisimiYakla(datePicker : UIDatePicker){
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MM/dd/yyyy"
        let alinanTarih = dateFormatter.string(from: datePicker.date)
        self.datePickerTextLabel.text = alinanTarih
    }

}

