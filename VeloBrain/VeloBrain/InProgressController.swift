//
//  InProgressController.swift
//  VeloBrain
//
//  Created by Nicolas Spragg on 2017-10-25.
//  Copyright © 2017 VeloBrain. All rights reserved.
//

import Foundation
import AVFoundation
import UIKit


class InProgessController: UIViewController {
    let synth = AVSpeechSynthesizer()
    var myUtterance = AVSpeechUtterance(string: "Hello")
    override func viewDidLoad() {
        super.viewDidLoad()
            talkToUser()
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
}
    
    func talkToUser() {
        myUtterance.rate = 0.5
        myUtterance.pitchMultiplier = 0.8
        synth.speak(myUtterance)
        
    }
}

