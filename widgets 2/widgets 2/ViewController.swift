//
//  ViewController.swift
//  widgets 2
//
//  Created by Suleyman YAZICI on 20.07.2023.
//

import UIKit
import AVKit
import AVFoundation



class ViewController: UIViewController {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var indicator: UIActivityIndicatorView!
    @IBOutlet weak var stepperClick: UIStepper!
    @IBOutlet weak var sliderLabel: UILabel!
    @IBOutlet weak var segmentedKonum: UISegmentedControl!
    @IBOutlet weak var silderValue: UISlider!
    @IBOutlet weak var switchKonum: UISwitch!
    override func viewDidLoad() {
        title = "Sueda"
        super.viewDidLoad()
        stepperClick.value = Double(silderValue.value)
        indicator.isHidden = true
        
    }
  
    @IBAction func uıswitch(_ sender: UISwitch) {
        if sender.isOn == true{
            print("Switch Açıldı.....")
        }else{
            print("Switch Kapandı.....")
        }
    }
    @IBAction func moveSlider(_ sender: UISlider) {
        sliderLabel.text = "Slider Value : \(Int(sender.value))"
        stepperClick.value = Double(sender.value)
    }
    
    @IBAction func stepperArttir(_ sender: UIStepper) {
        silderValue.value = Float(sender.value)
    }
    
    @IBAction func segmented(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex{
        case 0:
            print("BABA")
        case 1:
            print("YAGA")
        case 2:
            print("PUYA")
        case 3:
            print("KAŞA")
        default:
            print("Bune Emmi")
        }
        if sender.selectedSegmentIndex == 0 || sender.selectedSegmentIndex == 1 {
            self.indicator.isHidden = false
            self.indicator.startAnimating()
        }else{
            self.indicator.isHidden = true
            self.indicator.stopAnimating()
        }
        
    }
    
    @IBAction func button(_ sender: Any) {
       let konum =  switchKonum.isOn
        if konum == true{
            print("Switch in konumu açıktır.")
        }else{
            print("Switchin konumu kapalıdır.")
        }
        switch segmentedKonum .selectedSegmentIndex{
        case 0:
            print("BABA")
        case 1:
            print("YAGA")
        case 2:
            print("PUYA")
        case 3:
            print("KAŞA")
        default:
            print("Bune Emmi")
        }
        print("Slider ın alık değeri \(Int(silderValue.value)) dir")
        
        let randomNum = Int.random(in: 1...6)
        self.image.image = UIImage(named: "surat\(randomNum)")
        
        
    }
    
    @IBAction func videoStart(_ sender: Any) {
        if let dosyaYolu  = Bundle.main.path(forResource: "video", ofType: "mp4"){
            //Videonun kısayolunu oluşturduk güvenlik için if let ile çektik
            let oynatici = AVPlayer(url: URL(fileURLWithPath: dosyaYolu))
            //Dosya yolunu verip bir oynatıcı oluşturduk
            let oynaticiKontrol = AVPlayerViewController()
            //oynatma arayüzünü değişkene atadık
            oynaticiKontrol.player = oynatici
            //Arayolu oynaticiye verdik
            present(oynaticiKontrol, animated: true)
            oynatici.play()
        
            
        }
    }
    
}

