//
//  FizzBuzzTest.swift
//  
//
//  Created by Brayan Martinez on 28/6/24.
//

import Testing
@testable import Dynamic

@Test func fizzbuzzTest() async throws {
    let num: Int = 60
    let expectedValue: String = "FizzBuzz"

    print("-- FizzBuzz -- \n\n")

    let resultValue: String = fizzbuzz(n: num)

    print("FizzBuzz of \(num)  is \(resultValue) \n\n")

    assert(resultValue == expectedValue, "Assert failure!")

    print("Test Passed!")
}
