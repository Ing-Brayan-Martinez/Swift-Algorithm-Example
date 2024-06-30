
//
//  FactorialTest.swift
//
//
//  Created by Brayan Martinez on 28/6/24.
//

import Testing
@testable import Util
@testable import Ordering

@Test func bubbleSortTest() async throws {
    var data: [Int] = getData()

    print("-- BubbleSort -- \n\n")

    //before
    print("Before Sorting: \n")
    printData(data: &data)

    //sort
    print("\n")
    bubbleSort(data: &data)

    //after
    print("After Sorting: \n")
    printData(data: &data)

    print("Test Passed!")
}
