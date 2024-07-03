//
//  Fibonacci.swift
//  
//
//  Created by Brayan Martinez on 28/6/24.
//

public func fibonacci(n: Int) -> Int {
    switch n {
    case 0, 1:
      return n
    case let n where n > 1:
      return fibonacci(n: n - 1) + fibonacci(n: n - 2)
    default:
      fatalError("Error: Input must be a non-negative integer")
    }
  }
