//
//  FizzBuzz.swift
//  
//
//  Created by Brayan Martinez on 28/6/24.
//

public func fizzbuzz(n: Int) -> String {
    switch n {
    case let n where n % 3 == 0 && n % 5 == 0:
      return "FizzBuzz";
    case let n where n % 3 == 0:
      return "Fizz";
    case let n where n % 5 == 0:
      return "Buzz";
    default:
      return "\(n)";
    }
}
