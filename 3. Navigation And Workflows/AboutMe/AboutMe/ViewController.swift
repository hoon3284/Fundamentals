//
//  ViewController.swift
//  AboutMe
//
//  Created by wickedRun on 2021/07/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.layer.borderColor = CGColor(red: 0, green: 0, blue: 0, alpha: 1.0)
        label.layer.borderWidth = CGFloat(2.0)
        // Do any additional setup after loading the view.
    }


}

