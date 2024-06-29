//
//  Factorial.swift
//  
//
//  Created by Brayan Martinez on 28/6/24.
//

public func factorial(n: Int) -> Int {
    if n == 0 {
        return 1
    }
    return n * factorial(n: n - 1)
}
