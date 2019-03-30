//
//  ViewController.swift
//  Text2Speech
//
//  Created by ADG RIT 12 on 30/03/19.
//  Copyright © 2019 amog787. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    @IBOutlet weak var Label: UILabel!
    
    @IBOutlet weak var text: UITextView!
    
    @IBOutlet weak var button: UIButton!
    

    @IBAction func button(_ sender: Any) {
        print("button tapped")
        speakText(text: "Hello World")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("******")
        // Do any additional setup after loading the view, typically from a nib.
    }
  /*  override func viewDidAppear(_ animated: Bool) {
        print("OK")
    } */ //random bs
    
    func speakText(text: String) {
        let utterance = AVSpeechUtterance(string: text)
        utterance.rate = 0.3
        utterance.voice = AVSpeechSynthesisVoice(language: "en-US")
        
        let synt = AVSpeechSynthesizer()
        synt.speak(utterance)
        
    
    }

}

