//
//  ViewController.swift
//  PickerView
//
//  Created by Suleyman YAZICI on 29.07.2023.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    
    
    @IBOutlet weak var textLabel: UITextField!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var pickerView: UIPickerView!
    var dizi = [String:String]()
    var sehir = [String]()
    var viewdeGozukecek : String?
    override func viewDidLoad() {
        super.viewDidLoad()
        pickerView.delegate = self
        pickerView.dataSource = self
        dizi = ["İstanbul":"İstanbul çok güzel biyer taammı herşeyi var taaammı suriyeli çok var taammı var allah var işte ne ararsan bulunmakta orda orası güzel işte anladın sen bişileri felan var", "İzmir":"İzmir çok güzel biyer taammı herşeyi var taaammı suriyeli çok var taammı var allah var işte ne ararsan bulunmakta orda orası güzel işte anladın sen bişileri felan var", "Rize":"Rize çok güzel biyer taammı herşeyi var taaammı suriyeli çok var taammı var allah var işte ne ararsan bulunmakta orda orası güzel işte anladın sen bişileri felan var", "Artvin":"Artvin çok güzel biyer taammı herşeyi var taaammı suriyeli çok var taammı var allah var işte ne ararsan bulunmakta orda orası güzel işte anladın sen bişileri felan var","Bolu":"Bolu çok güzel biyer taammı herşeyi var taaammı suriyeli çok var taammı var allah var işte ne ararsan bulunmakta orda orası güzel işte anladın sen bişileri felan var"]
        sehir = Array(dizi.keys)

    }
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return dizi.count
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return sehir[row]
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        let secilenSehir = sehir[row]
        let secilenDeger = dizi[secilenSehir]
        textLabel.text = secilenSehir
        viewdeGozukecek = secilenDeger
        
    }

    @IBAction func buton(_ sender: Any) {
        textView.text = viewdeGozukecek
    }
    
    
    
}

