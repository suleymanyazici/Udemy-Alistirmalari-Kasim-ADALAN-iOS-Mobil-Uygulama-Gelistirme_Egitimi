//
//  ViewController.swift
//  wqe
//
//  Created by Suleyman YAZICI on 29.07.2023.
//

import UIKit

class ViewController: UIViewController{

    @IBOutlet weak var textField: UITextField!
    var pickerView : UIPickerView?
    var sehirler = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sehirler = ["İstanbul", "İzmir", "Aydın", "Bolu", "Rize", "Diyarbakır", "Van", "İzmit", "Elazığ", "Kastamonu", " "]
        pickerView = UIPickerView()
        pickerView?.delegate = self
        pickerView?.dataSource = self
        textField.inputView = pickerView
        
        
        //ToolBar için yapılması gereken kodlamalar.
        let toolBar = UIToolbar()
        toolBar.tintColor = UIColor.red
        toolBar.sizeToFit()
        let tamamButton = UIBarButtonItem(title: "Tamam", style: .plain, target: self, action: #selector(ViewController.tamamTikla))
        let boslukButton = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        let iptalButton = UIBarButtonItem(title: "İptal", style: .plain, target: self, action: #selector(ViewController.iptlTikla))
        toolBar.setItems([tamamButton, boslukButton, iptalButton], animated: true)
        textField.inputAccessoryView = toolBar
        
    }

}

extension ViewController : UIPickerViewDelegate, UIPickerViewDataSource{
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return sehirler.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sehirler[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let alinanDeger = sehirler[row]
        textField.text = alinanDeger
    }
    @objc func tamamTikla(){
        view.endEditing(true)
    }
    @objc func iptlTikla(){
        textField.text = ""
        textField.placeholder = "Ülke Seç"
        view.endEditing(true)
    }
}
