//
//  Fibonacci.swift
//  
//
//  Created by Brayan Martinez on 28/6/24.
//

public func fibonacci(n: Int) -> Int {
    if n <= 1 {
        return n
    }
    return fibonacci(n: n - 1) + fibonacci(n: n - 2)
}
