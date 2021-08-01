//
//  ViewController.swift
//  LifeCycle
//
//  Created by wickedRun on 2021/07/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("ViewController - View Did Load")
    }
    
//    func viewWillAppear(_ animated: Bool) {
//          override 키워드를 붙이면 에러가 난다 이유는 상위 클래스인 UIViewController에 정의가 되어있기 때문에 동일한 이름으로 에러가 난다.
//    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Add your code here
        print("ViewController - View Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("ViewController - View Did Appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("ViewController - View Will Disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("ViewController - View Did Disappear")
    }
}

