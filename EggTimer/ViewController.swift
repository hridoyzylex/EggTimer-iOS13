//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    
    //    let softTime = 5
    //    let mediumTime = 7
    //    let hardTime = 12
    
    let eggTimes = ["Soft" : 3, "Medium" : 4, "Hard" : 7]
    var secondsRemaining = 60
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        timer.invalidate()
        
        let hardness = sender.currentTitle! //Soft, Medium, Hard
            
        secondsRemaining = eggTimes[hardness]!
        
        //        print(eggTime[hardness]!)
        //        if (hardness == "Soft"){
        //            print(eggTime["Soft"]!)
        //        }else if(hardness == "Medium"){
        //                    print(eggTime["Medium"]!)
        //        }else if(hardness == "Hard"){
        //            print(eggTime["Hard"]!)
        //        }
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer(){
        if secondsRemaining > 0{
            print("\(secondsRemaining) seconds.")
            secondsRemaining -= 1
        }
        else {
            timer.invalidate()
            titleLabel.text = "DONE!"
        }
    }
}

