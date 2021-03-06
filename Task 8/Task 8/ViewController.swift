//
//  ViewController.swift
//  Task 8
//
//  Created by Adilzhan Akhayev on 4/9/20.
//  Copyright © 2020 Adilzhan Akhayev. All rights reserved.
//

import UIKit
import AVKit
import Foundation
import AVFoundation
import MediaPlayer

class ViewController: UIViewController {

    
    @IBAction func playVideo(_ sender: UIButton) {
        guard let url = URL(string: "https://devstreaming-cdn.apple.com/videos/streaming/examples/bipbop_adv_example_hevc/master.m3u8") else {
            return
        }
        // Create an AVPlayer, passing it the HTTP Live Streaming URL.
        let player = AVPlayer(url: url)

        // Create a new AVPlayerViewController and pass it a reference to the player.
        let controller = AVPlayerViewController()
        controller.player = player

        // Modally present the player and call the player's play() method when complete.
        present(controller, animated: true) {
            player.play()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

