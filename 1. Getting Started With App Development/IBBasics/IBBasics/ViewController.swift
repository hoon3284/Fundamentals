//
//  ViewController.swift
//  IBBasics
//
//  Created by wickedRun on 2021/07/05.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myButton.setTitleColor(.red, for: .normal)
    }

    @IBAction func buttonPressed(_ sender: Any) {
        print("The button was pressed")
    }
    
}

