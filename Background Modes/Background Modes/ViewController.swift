//
//  ViewController.swift
//  Notification
//
//  Created by Suleyman YAZICI on 18.09.2023.
//

import UIKit
import AVFoundation
class ViewController: UIViewController {

    var player = AVAudioPlayer()//Background modes aktif edilmezse işlem çalışmayacaktır.
    override func viewDidLoad() {
        super.viewDidLoad()


        do {
            let filePath = Bundle.main.path(forResource: "music", ofType: "mp3")
            player = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: filePath!))
            player.prepareToPlay()
                                       
        } catch  {
            print(error)
        }

    }

    @IBAction func start(_ sender: Any) {
        player.play()
    }
    
    @IBAction func stop(_ sender: Any) {
        player.stop()
    }
}

