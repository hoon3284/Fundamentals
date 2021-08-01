//
//  Question.swift
//  PersonalityQuiz
//
//  Created by wickedRun on 2021/07/31.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}
