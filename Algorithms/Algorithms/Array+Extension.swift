//
//  Array+Extension.swift
//  Algorithms
//
//  Created by Giga Khizanishvili on 14.10.21.
//

import Foundation

extension Array {
    static func read() -> [Int] {
        guard let line = readLine() else {
            print("EOF has already been reached when readLine()")
            return []
        }
        
        return line.components(separatedBy: " ").map { Int($0)! }
    }
}

extension Array where Element: Numeric {
    func sum() -> Element {
        reduce(0, +)
    }
}

extension Array where Element == String {
    func concatenated() -> Element {
        reduce("", +)
    }
}
