//
//  MiddleViewController.swift
//  OrderOfEvents
//
//  Created by wickedRun on 2021/07/26.
//

import UIKit

class MiddleViewController: UIViewController {

    @IBOutlet var label: UILabel!
    var eventNumber = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        addEvent(from: "viewDidLoad")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        addEvent(from: "viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        addEvent(from: "viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        addEvent(from: "viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        addEvent(from: "viewDidDisappear")
    }
    
    
    func addEvent(from: String) {
        if let existingText = label.text {
            label.text = "\(existingText)\nEvent number\n\(eventNumber) was \(from)"
            eventNumber += 1
        }
//        label.sizeToFit()
        // 나는 책대로 해서는 label이 resize되지 않는다.
        // 위 메소드로 사이즈를 재정의해주거나, autolayout을 사용한다.
        // 지금 예제에서는 스토리보드에서 autolayout을 통해 constraint를 생성해주었다.
    }
    
}
