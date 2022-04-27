//
//  StringCalculatorError.swift
//  RacingCar
//
//  Created by YooBin Jo on 2022/04/26.
//

import Foundation

enum StringCalculatorError: Error {
    case passNil
    case passEmpty
    case lastValueIsNotNumber
    case calculateError
    case invalidOperator
    
    var localizedDescription: String {
        switch self {
        case .passNil:
            return "입력값이 nil입니다."
        case .passEmpty:
            return "입력값이 비어있습니다."
        case .lastValueIsNotNumber:
            return "마지막 입력값이 숫자가 아닙니다."
        case .calculateError:
            return "계산이 잘못되었습니다."
        case .invalidOperator:
            return "올바른 연산자가 아닙니다."
        }
    }
}