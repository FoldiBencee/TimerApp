//
//  ViewController.swift
//  TimerApp
//
//  Created by foldi bence on 2020. 12. 09..
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var startBttn: UIButton!
    
    @IBOutlet weak var pauseBttn: UIButton!
    
    @IBOutlet weak var resetBttn: UIButton!
    
    @IBOutlet weak var addSec: UIButton!
    
    @IBOutlet weak var minusSec: UIButton!
    
    
    var timer = Timer()
    var seconds = 60
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    
    
    @IBAction func startBttn(_ sender: Any) {
         
        timer.invalidate()
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.timerClass), userInfo: nil, repeats: true)
        
    }
    
    
    @IBAction func pauseBttn(_ sender: Any) {
        timer.invalidate()
    }
    
    
    @IBAction func resetBttn(_ sender: Any) {
        timer.invalidate()
        seconds = 60
        timerLabel.text = String(seconds)
    }
    
    @IBAction func addSec(_ sender: Any) {
        seconds = seconds + 5
        timerLabel.text = String(seconds)
    }
    
    @IBAction func minusSec(_ sender: Any) {
        seconds = seconds - 5
        timerLabel.text = String(seconds)
    }
    @objc func timerClass()
    {
        seconds -= 1
        timerLabel.text = String(seconds)
        if seconds <= 0
        {
            timer.invalidate()
        }
    }
    
}

