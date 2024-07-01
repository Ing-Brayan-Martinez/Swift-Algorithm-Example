//
//  QuickSortTest.swift
//  
//
//  Created by Brayan Martinez on 30/6/24.
//

import Testing
@testable import Util
@testable import Ordering

@Test func quickSortTest() async throws {
    var data: [Int] = getData()

    print("-- QuickSort -- \n\n")

    //before
    print("Before Sorting: \n")
    printData(data: &data)

    //sort
    print("\n")
    quickSort(data: &data)

    //after
    print("After Sorting: \n")
    printData(data: &data)

    print("Test Passed!")
}
