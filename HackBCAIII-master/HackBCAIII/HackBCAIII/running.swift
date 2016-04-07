//
//  running.swift
//  HackBCAIII
//
//  Created by Shashank Sharma on 4/3/16.
//  Copyright © 2016 Team. All rights reserved.
//

import UIKit

class RunningViewController: UIViewController {
    
    let socket = SocketIOClient(socketURLString: "http://eec13683.ngrok.io")
    
    override func viewDidLoad() {
        socket.connect()
        
        socket.on("connect") {data, ack in
            self.socket.emit("msg")
        }
        
    
    }
    
}
