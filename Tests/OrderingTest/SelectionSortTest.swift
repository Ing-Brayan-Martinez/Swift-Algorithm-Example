//
//  SelectionSortTest.swift
//  
//
//  Created by Brayan Martinez on 30/6/24.
//

import Testing
@testable import Util
@testable import Ordering

@Test func selectionSortTest() async throws {
    var data: [Int] = getData()

    print("-- SelectionSort -- \n\n")

    //before
    print("Before Sorting: \n")
    printData(data: &data)

    //sort
    print("\n")
    selectionSort(data: &data)

    //after
    print("After Sorting: \n")
    printData(data: &data)

    print("Test Passed!")
}
