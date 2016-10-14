//
//  ViewController.swift
//  StopWatch
//
//  Created by Kartik on 10/14/16.
//  Copyright © 2016 Kartik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var time = 0
    var timer = Timer()
    
    func timeCount(){
        time += 1
        timeL.text = "\(time) Sec"
    }
    
    
    @IBOutlet weak var timeL: UILabel!
    @IBAction func startB(_ sender: AnyObject) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timeCount), userInfo: nil, repeats: true)
    }
    @IBAction func pauseB(_ sender: AnyObject) {
        timer.invalidate()
        timeL.text = "\(time) Sec"
    }
    @IBAction func resetB(_ sender: AnyObject) {
        timer.invalidate()
        time = 0
        timeL.text = "\(time) Sec"
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

