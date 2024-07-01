//
//  SelectionSort.swift
//  
//
//  Created by Brayan Martinez on 28/6/24.
//

public func selectionSort(data: inout [Int]) {
    for i in 0..<(data.count-1) {
        var min_index = i
        for j in i + 1..<(data.count) {
            if (data[min_index] > data[j]) {
                min_index = j
            }
        }
        if (min_index != i) {
            swap(first: i, second: min_index, data: &data)
        }
    }
}

private func swap(first: Int, second: Int, data: inout [Int]) {
    var value1 = data[first]
    var value2 = data[second]
    let temp = value1
    value1 = value2
    value2 = temp
    data[first] = value1
    data[second] = value2
}
