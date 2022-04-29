//
//  CarTests.swift
//  RacingCarTest
//
//  Created by YooBin Jo on 2022/04/28.
//

import XCTest

class CarTests: XCTestCase {
    
    func testGenerateRandomNumber() throws {
        XCTAssert((0...9).contains(Car().generateRandomNumber()), "생성된 랜덤숫자가 범위를 벗어납니다.")
    }
    
    func testCarMove() throws {
        XCTAssertEqual(try? Car().move(randomNumber: 4), true, "차량이 움직이지 않았습니다.")
    }
    
    func testCarNotMove() throws {
        XCTAssertEqual(try? Car().move(randomNumber: 3), false, "차량이 움직였습니다.")
    }
    
    func test_차량_움직임_숫자가_범위를_벗어나는_숫자() throws {
        XCTAssertThrowsError(try Car().move(randomNumber: 10),
                             "유효하지 않은 숫자입니다.") { error in
            guard let error = error as? RacingCarStep3Error else {
                fatalError("StringCalculatorError가 아닙니다.")
            }
            XCTAssert(error == .invalidNumber, "invalidError가 아닙니다.")
        }
    }
}