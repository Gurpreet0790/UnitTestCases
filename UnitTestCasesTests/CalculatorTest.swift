//
//  CalculatorTest.swift
//  UnitTestCasesTests
//
//  Created by ReetDhillon on 2024-02-28.
//

import XCTest
@testable import UnitTestCases

final class CalculatorTest: XCTestCase {
        func testSumMethod() throws{
            let calculator = Calculator()
            let result = calculator.Sum(x: 5, y: 11)
            XCTAssertEqual(result, 16)
        }
   
}
