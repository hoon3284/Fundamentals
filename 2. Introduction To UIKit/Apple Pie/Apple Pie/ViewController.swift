//
//  ViewController.swift
//  Apple Pie
//
//  Created by wickedRun on 2021/07/13.
//

import UIKit

class ViewController: UIViewController {
    var listOfWords = ["buccaneer", "swift", "glorious", "incandescent", "bug", "program"]
    let incorrectMovesAllowed = 7   // 라운드당 틀릴 수 있는 횟수.
    // range : 1 ~ 7이며, 낮을 수록 어렵고 높을 수록 쉬워짐. 범위가 1~7인 이유는 사과나무 이미지가 7개 달린 이미지가 끝이기 때문.
    
    @IBOutlet var treeImageView: UIImageView!
    @IBOutlet var correctWordLabel: UILabel!
    @IBOutlet var scoreLabel: UILabel!
    @IBOutlet var letterButtons: [UIButton]!
    
    var currentGame: Game!  // 왜 느낌표 붙였냐? : 앱 런치와 첫라운드 시작사이에 짧은 순간에 currentGame은 값이 없기 때문에.
    var totalWins = 0 {
        didSet {
            newRound()
        }
    }
    var totalLosses = 0 {
        didSet {
            newRound()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newRound()
    }

    @IBAction func letterButtonPressed(_ sender: UIButton) {
        sender.isEnabled = false
        let letterString = sender.title(for: .normal)!
        let letter = Character(letterString.lowercased())
        currentGame.playerGuessed(letter: letter)
        updateGameState()
    }
    
    func newRound() {
        if !listOfWords.isEmpty {
            let newWord = listOfWords.removeFirst()
            currentGame = Game(word: newWord, incorrectMovesRemaining: incorrectMovesAllowed, guessedLetters: [])
            enableLetterButtons(true)
            updateUI()
        } else {
            enableLetterButtons(false)
        }
    }
    
    func updateUI() {
//        var letters = [String]()
//        for letter in currentGame.formattedWord {
//            letters.append(String(letter))
//        }
//        let wordWithSpacing = letters.joined(separator: " ")
//        아래 map을 사용한 방법으로 변경.
        let wordWithSpacing = currentGame.formattedWord.map { String($0) }.joined(separator: " ")
        correctWordLabel.text = wordWithSpacing
        scoreLabel.text = "Wins: \(totalWins), Losses: \(totalLosses)"
        treeImageView.image = UIImage(named: "Tree \(currentGame.incorrectMovesRemaining)")
    }
    
    func updateGameState() {
        if currentGame.incorrectMovesRemaining == 0 {
            totalLosses += 1
        } else if currentGame.word == currentGame.formattedWord {
            totalWins += 1
        } else {
            updateUI()
        }
    }
    
    func enableLetterButtons(_ enable: Bool) {
        for button in letterButtons {
            button.isEnabled = enable
        }
    }
}

/*
 Stretch Goals.
    1. map 사용해서 가려진 단어 표시. ✓
    2. 각 추측에 대해 점수를 매기는 점수 기능과 각 성공적인 단어 완성도에 대해 추가 점수를 부여합니다.
        (Add a scoring feature that awards points for each correct guess and additional points for each successful word completion.)
    3. 여러 명의 참가자가 틀릴 때마다 차례를 바꿔 게임을 할 수 있습니다.
        (Allow multiple players to play, switching turns after each incorrect guess.)
    4. 인터페이스 버튼을 사용하여 한 번에 한 글자씩 추측하는 대신 키보드를 사용하여 전체 단어를 추측할 수 있습니다.
        (Allow the player to guess the full word using the keyboard instead of guessing one letter at a time using the interface buttons.)
    5. 특수 문자가 포함된 지원하기. 예를 들어, E 버튼을 단어 내에서 "e"와 "é"를 확인 할 수 있습니다.
        (Support letters with special characters. For example, the E button could check for "e" and "é" within a word.)
    6. 앱이 iPad 1/3 splitview 모드일때는 레이아웃이 제대로 작동하지 않습니다. 버튼이 납작해집니다. 이 문제를 해결하려면 trait variations를 활용하여 compact width일때 레이아웃을 조정한다.
        (The keyboard layout doesn't work well when the app is in one-third Split View mode on iPad -- the buttons get flattened.
        To resolve this issue, use trait variations to adjust the layout when in compact width.)
 */
