//
//  ViewController.swift
//  strumr
//
//  Created by Scott Campbell on 3/3/18.
//  Copyright © 2018 Scott Campbell. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var audioPlayer: AVAudioPlayer!
    
    let sounds = [
        "nylon1", "nylon2", "nylon3", "nylon4", "nylon5",
        "nylon6", "nylon7", "nylon8", "nylon9", "nylon10",
        "nylon11", "nylon12", "nylon13", "nylon14", "nylon15",
        "nylon16", "nylon17", "nylon18", "nylon19", "nylon20",
        "nylon21", "nylon22", "nylon23", "nylon24", "nylon25",
        "nylon26", "nylon27", "nylon28", "nylon29", "nylon30",
        "nylon31", "nylon32", "nylon33", "nylon34", "nylon35",
        "nylon36", "nylon37", "nylon38", "nylon39", "nylon40",
        "nylon41", "nylon42", "nylon43", "nylon44", "nylon45",
        "nylon46", "nylon47", "nylon48", "nylon49", "nylon50",
    ]

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }

    @IBAction func strumBtn(_ sender: UIButton) {
        
        let randomSound = Int(arc4random_uniform(UInt32(sounds.count - 1)))
        
        strumGuitar(soundFileName: sounds[randomSound])
        
    }
    
    func strumGuitar(soundFileName: String) {
        
        let soundURL = Bundle.main.url(forResource: soundFileName, withExtension: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: soundURL!)
        } catch {
            print(error)
        }
        
        audioPlayer.play()
        
    }
    
}

