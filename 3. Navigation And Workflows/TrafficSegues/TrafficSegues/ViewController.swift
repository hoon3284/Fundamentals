//
//  ViewController.swift
//  TrafficSegues
//
//  Created by wickedRun on 2021/07/20.
//

import UIKit

class ViewController: UIViewController {
    // Show Segue is worked like Presents Modally before adding navigation controller
    // Show Segue는 navigation controller가 적용되기 전까지는 Presents Modally 처럼 동작한다.
    @IBOutlet var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func unwindToRed(unwindSegue: UIStoryboardSegue) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segue(UIStoryboardSegue) properties
        // 1. identifier : 다른 세그와 구별할 수 있는 세그의 이름. -> 여기서는 세그가 하나이기 때문에 쓰일 일x
        // 2. destination : 세그가 완료되면 보여질 뷰컨트롤러.
        segue.destination.navigationItem.title = textField.text
        print("\(textField.text!)")
    }


}

