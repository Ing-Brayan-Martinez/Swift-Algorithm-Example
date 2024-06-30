//
//  FibonacciTest.swift
//  
//
//  Created by Brayan Martinez on 28/6/24.
//

import Testing
@testable import Dynamic

@Test func fibonacciTest() async throws {
    let num: Int = 20
    let expectedValue: Int = 6765

    print("-- Fibonacci -- \n\n")

    let resultValue: Int = fibonacci(n: num)

    print("Fibonacci of \(num)  is \(resultValue) \n\n")

    assert(resultValue == expectedValue, "Assert failure!")

    print("Test Passed!")
}
