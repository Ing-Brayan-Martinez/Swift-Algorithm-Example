//
//  FactorialTest.swift
//  
//
//  Created by Brayan Martinez on 28/6/24.
//

import Testing
@testable import Dynamic

@Test func factorialTest() async throws {
    let num: Int = 5
    let expectedValue: Int = 120

    print("-- Factorial -- \n\n")

    let resultValue: Int = factorial(n: num)

    print("Factorial of \(num)  is \(resultValue) \n\n")

    assert(resultValue == expectedValue, "Assert failure!")

    print("Test Passed!")
}
