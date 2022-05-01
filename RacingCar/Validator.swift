//
//  Validator.swift
//  RacingCar
//
//  Created by YooBin Jo on 2022/05/01.
//

import Foundation

final class Validator {
    
    static func checkValidation(number: Int) throws -> Int {
        guard (0 ... 9).contains(number) else {
            throw RacingCarError.invalidNumber
        }
        return number
    }
    
    static func checkValidation(count: Int) throws -> Int {
        guard count > 0 else {
            throw RacingCarError.invalidNumber
        }
        return count
    }
}