//
//  BubbleSort.swift
//  
//
//  Created by Brayan Martinez on 28/6/24.
//

public func bubbleSort(data: inout [Int]) {
    for i in 0..<(data.count-1) {
        var breakCount = 0
        for j in 0..<(data.count-i-1) {
            if data[j] > data[j + 1] {
                swap(first:j, second: j + 1, data: &data)
                breakCount = breakCount + 1
            }
        }
        if breakCount == 0 {
            break
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
