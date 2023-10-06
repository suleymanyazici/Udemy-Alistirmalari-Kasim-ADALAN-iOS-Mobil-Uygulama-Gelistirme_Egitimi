//
//  ViewController.swift
//  Timer
//
//  Created by Suleyman YAZICI on 19.09.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var timerLabel: UILabel!
    var timer = Timer()
    var value = 0
    var value2 = 5
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func startButton(_ sender: Any) {
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerStart), userInfo: nil, repeats: true)
        
        //timeInterval  : timer 'in kaç saniye arayla çalışacağı belirlenir
        //selector : timeInterval de deverilen değer doldukça çalışacak fonksiyon
        //repeats : tımetravel süresi bittikten sonra tekrar olsunmu olmasınmı nın bool olarak verildiği değer
        
    }
    @objc func timerStart(){
        
        timerLabel.text = String(value)
        value += 1
        
        if value > 6{
            timer.invalidate()// sayac durdurmaya yarayan işlem
            timerLabel.text = "Süre bitti babayiğit"
            value = 0
        }
        
    }
    @objc func timerBack(){
        
        timerLabel.text = String(value)
        value += 1
        
        if value >= 0{
            timer.invalidate()// sayac durdurmaya yarayan işlem
            timerLabel.text = "Süre bitti babayiğit"
            value2 = 5
        }
        
    }
    
}

