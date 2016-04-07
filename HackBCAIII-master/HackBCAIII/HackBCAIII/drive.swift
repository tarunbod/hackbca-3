//
//  drive.swift
//  HackBCAIII
//
//  Created by Shashank Sharma on 4/3/16.
//  Copyright © 2016 Team. All rights reserved.
//

import UIKit
import AVFoundation

class DriveViewController: UIViewController,AVAudioPlayerDelegate {
    
    let socket = SocketIOClient(socketURLString: "http://eec13683.ngrok.io")
    var audioPlayer = AVAudioPlayer()

    
    override func viewDidLoad() {
        
        socket.connect()
        
        socket.on("connect") {data, ack in
            self.socket.emit("msg")
        }
        
        let numbers = [
            "ice1": self.ice1.text!,
            "ice2": self.ice2.text!
        ]
        
        socket.on("alert") {data, ack in
            self.playSound();
            self.socket.emit("number", numbers)
        }
        
    }

    @IBOutlet weak var ice1: UITextField!
    @IBOutlet weak var ice2: UITextField!
    @IBOutlet weak var ice3: UITextField!
    
    @IBAction func driveButton(sender: UIButton) {
        sender.setTitle("Dr!ve mode is now active", forState: UIControlState.Selected)
        self.resignFirstResponder()
    }
    
    func playSound(){
        do {
            let url = "http://soundbible.com/mp3/BOMB_SIREN-BOMB_SIREN-247265934.mp3"
            let fileURL = NSURL(string:url)
            let soundData = NSData(contentsOfURL:fileURL!)
            //self.audioPlayer = try AVAudioPlayer(contentsOfURL: fileURL!)
            self.audioPlayer = try AVAudioPlayer(data: soundData!)
            audioPlayer.prepareToPlay()
            audioPlayer.volume = 1.0
            audioPlayer.delegate = self
            audioPlayer.play()
        } catch {
            print("Error getting the audio file")
        }
        
    }
    
}