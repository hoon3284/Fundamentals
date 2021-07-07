//
//  ViewController.swift
//  Light
//
//  Created by wickedRun on 2021/07/06.
//

import UIKit

class ViewController: UIViewController {
    var lightOn = true

//    @IBOutlet var lightButton: UIButton!
    // @IBOutlet This keyword signals to Xcode that the property on this line is an outlet.
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        // Do any additional setup after loading the view.
    }

    fileprivate func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
//        if lightOn {
//            view.backgroundColor = .white
////            lightButton.setTitle("Off", for: .normal)
//        } else {
//            view.backgroundColor = .black
////            lightButton.setTitle("On", for: .normal)
//        }
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        // @IBAction signals to Xcode that a relationship can be created between a visual element in a storyboard and the function.
        lightOn.toggle()
        updateUI()
    }
    
}

