//
//  FizzBuzz.swift
//  
//
//  Created by Brayan Martinez on 28/6/24.
//

public func fizzbuzz(n: Int) -> String {
    switch n {
    case 3 * 5:
      return "FizzBuzz";
    case 3:
      return "Fizz";
    case 5:
      return "Buzz";
    default:
      return "\(n)";
    }
}
