//
//  Data.swift
//  
//
//  Created by Brayan Martinez on 30/6/24.
//

public func getData() -> [Int] {
    return [6, 2, 26, 12, 1, 5, 8, 14, 10, 17, 32]
}

public func printData(data: inout [Int]) {
    data.forEach { n in
        print(n)
    }
}
