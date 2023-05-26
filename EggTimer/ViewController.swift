//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    let softTime = 5
//    let mediumTime = 7
//    let hardTime = 12
    
    let eggTime = ["Soft" : 5, "Medium" : 7, "Hard" : 12]
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
            
        let hardness = sender.currentTitle!
        var secondsRemaining = 30
        
        print(eggTime[hardness]!)
//        if (hardness == "Soft"){
//            print(eggTime["Soft"]!)
//        }else if(hardness == "Medium"){
//                    print(eggTime["Medium"]!)
//        }else if(hardness == "Hard"){
//            print(eggTime["Hard"]!)
//        }
        
        
        Timer.scheduledTimer(withTimeInterval: 1.0, repeats: true) { (Timer) in
            if self.secondsRemaining > 0 {
                print ("\(self.secondsRemaining) seconds")
                self.secondsRemaining -= 1
            } else {
                Timer.invalidate()
            }
        }
}
