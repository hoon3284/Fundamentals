//
//  ResultsViewController.swift
//  PersonalityQuiz
//
//  Created by wickedRun on 2021/07/31.
//

import UIKit

class ResultsViewController: UIViewController {
    
    @IBOutlet var resultAnswerLabel: UILabel!
    @IBOutlet var resultDefinitionLabel: UILabel!
    
    init?(coder: NSCoder, response: [Answer]) {
        self.response = response
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        // 위에서 failable 이니셜라이저를 정의했지만 super.init의 경우 failable이 없기때문에 여기서 required로 failable init을 만든다.
        // 인거 같음. 더 알아보도록
        fatalError("init(coder:) has not been implemented")
    }
    
    var response: [Answer]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        calculatePersonalityResult()
    }
    
    func calculatePersonalityResult() {
/*      default: 를 쓰지 않는다면 사용해야할 코드
        let frequencyOfAnswers = response.reduce(into: [AnimalType: Int]()) { (counts, answer) in
            if let existingCount = counts[answer.type] {
                counts[answer.type] = existingCount + 1
            } else {
                counts[answer.type] = 1
            }
        }
 */
        let frequencyOfAnswers = response.reduce(into: [:]) { (counts, answer) in
            counts[answer.type, default: 0] += 1
        }
/*
        let frequentAnswersSorted = frequencyOfAnswers.sorted(by: { (pair1, pair2) in
            return pair1.value > pair2.value
        })
        let mostCommonAnswer = frequentAnswersSorted.first!.key
        위 방법을 좀 더 기술적으로 사용하면 아래 코드가 된다.
 */
        let mostCommonAnswer = frequencyOfAnswers.sorted { $0.1 > $1.1 }.first!.key
        
        resultAnswerLabel.text = "You are a \(mostCommonAnswer.rawValue)!"
        resultDefinitionLabel.text = mostCommonAnswer.definition
        
    }
}
