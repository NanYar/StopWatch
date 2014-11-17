//
//  ViewController.swift
//  StopWatch
//
//  Created by NanYar on 15.11.14.
//  Copyright (c) 2014 NanYar. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = NSTimer()
    var count = 0
    var isStartBarButtonPressed = false
    

    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }
    

    @IBAction func startBarButtonPressed(sender: UIBarButtonItem)
    {
        if !self.isStartBarButtonPressed
        {
            self.timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: "result", userInfo: nil, repeats: true)
        }
        isStartBarButtonPressed = true
        
    }
    @IBAction func pauseBarButtonPressed(sender: UIBarButtonItem)
    {
        self.timer.invalidate()
        self.isStartBarButtonPressed = false
    }
    @IBAction func resetBarButtonPressed(sender: UIBarButtonItem)
    {
        self.timer.invalidate()
        self.timeLabel.text = "0"
        self.count = 0
        self.isStartBarButtonPressed = false
    }
    
    
    
    // Helper Functions
    
    func result()
    {
        self.count++
        self.timeLabel.text = String(count)
    }

}
