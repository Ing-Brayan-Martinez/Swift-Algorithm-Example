//
//  Factorial.swift
//  
//
//  Created by Brayan Martinez on 28/6/24.
//

public func factorial(n: Int) -> Int {
    switch n {
    case 0:
      return 1
    case let n where n > 0:
      return n * factorial(n: n - 1)
    default:
      fatalError("Error: Input must be a non-negative integer")
    }
  }
