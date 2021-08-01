//
//  ViewController.swift
//  TrafficSegues
//
//  Created by wickedRun on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var segueSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func yellowButtonTapped(_ sender: Any) {
//        if segueSwitch.isOn {
        if shouldPerformSegue(withIdentifier: "Yellow", sender: nil) {
            performSegue(withIdentifier: "Yellow", sender: nil)
        }
    }
    
    @IBAction func greenButtonTapped(_ sender: Any) {
//        if segueSwitch.isOn {
        if shouldPerformSegue(withIdentifier: "Green", sender: nil) {
            performSegue(withIdentifier: "Green", sender: nil)
        }
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        if segueSwitch.isOn {
            return true
        } else {
            return false
        }
    }
    
    
}

