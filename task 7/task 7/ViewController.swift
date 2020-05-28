//
//  ViewController.swift
//  task 7
//
//  Created by Adilzhan Akhayev on 4/3/20.
//  Copyright © 2020 Adilzhan Akhayev. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        do{
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "sound", ofType: "mp3")!))
            audioPlayer.prepareToPlay()
        }
        catch{
            print(error)
        }
    }
    @IBAction func play(_ sender: Any) {
        audioPlayer.play()
    }
    @IBAction func pause(_ sender: Any) {
        if audioPlayer.isPlaying{
            audioPlayer.pause()
            
        }
        else{
            
        }
    }
    @IBAction func restart(_ sender: Any) {
        if audioPlayer.isPlaying{
            audioPlayer.currentTime = 0
            audioPlayer.play()
            
        }
        else{
            audioPlayer.play()
        }
        
    }
    

}

