//
//  ViewController.swift
//  CommonInputControls
//
//  Created by wickedRun on 2021/07/09.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var toggle: UISwitch!
    @IBOutlet var slider: UISlider!
    @IBOutlet var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
        // first argument is The owner of the function you want to execute. The owner of the button Tapped(_:) method is the ViewController, or self.
        // The second argument is a "selector": the name used to select a method to execute for an object. Swift uses #selector as its syntax to locate a particular method.
        // The last argument is the event that should trigger the action. Just like you saw earlier in the Connections inspector, you should tie your actions to the Touch Up Inside event.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Button was tapped!")
        
        if toggle.isOn {
            print("The switch is on.")
        } else {
            print("The switch is off")
        }
        print("The slider is set to \(slider.value)")
    }
    
    @IBAction func switchToggled(_ sender: UISwitch) {
        if sender.isOn {
            print("The switch is on.")
        } else {
            print("The switch is off")
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        print(sender.value)
    }
    
    @IBAction func keyboardReturnKeyTapped(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    @IBAction func textChanged(_ sender: UITextField) {
        if let text = sender.text {
            print(text)
        }
    }
    
    @IBAction func respondToTapGesture(_ sender: UITapGestureRecognizer) {
        let location = sender.location(in: view)
        print(location)
    }
}

