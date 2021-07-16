//
//  ViewController.swift
//  Two Buttons
//
//  Created by wickedRun on 2021/07/11.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func setTextButtonTapped(_ sender: Any) {
        label.text = textField.text
    }

    @IBAction func clearTextButtonTapped(_ sender: Any) {
        textField.text = ""
        label.text = ""
    }
    
}

