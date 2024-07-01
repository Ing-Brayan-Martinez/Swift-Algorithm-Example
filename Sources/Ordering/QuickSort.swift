//
//  QuickSort.swift
//  
//
//  Created by Brayan Martinez on 28/6/24.
//

func quickSort(data: inout [Int]) {
    let lower = 0
    let upper = data.count - 1

    if (upper > lower) {
        let partitionIndex: Int = partition(data: &data, lower: lower, upper: upper)

        internalQuickSort(data: &data, lower: lower, upper: partitionIndex - 1)
        internalQuickSort(data: &data, lower: partitionIndex + 1, upper: upper)
    }
}

private func partition(data: inout [Int], lower: Int, upper: Int) -> Int {
    var i = (lower - 1)
    let pivot = data[upper]

    for j in lower..<(upper) {
        if (data[j] <= pivot) {
            i = i + 1
            swap(first: i, second: j, data: &data)
        }
    }

    swap(first: i + 1, second: upper, data: &data)
    return (i + 1)
}

private func internalQuickSort(data: inout [Int], lower: Int, upper: Int) {
    if (upper > lower) {
        // partitioning index is returned by the partition method , partition
        // element is at its correct poition

        let partitionIndex: Int = partition(data: &data, lower: lower, upper: upper)

        // Sorting elements before and after the partition index
        internalQuickSort(data: &data, lower: lower, upper: partitionIndex - 1)
        internalQuickSort(data: &data, lower: partitionIndex + 1, upper: upper)
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
