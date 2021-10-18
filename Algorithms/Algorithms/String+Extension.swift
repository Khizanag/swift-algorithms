//
//  String+Extension.swift
//  Algorithms
//
//  Created by Giga Khizanishvili on 29.09.21.
//

import Foundation

extension String {
    
    var length: Int {
        return count
    }
    
    subscript (i: Int) -> String {
        return self[i ..< i + 1]
    }
    
    func substring(from index: Int) -> String {
        return self[min(index, length) ..< length]
    }
    
    func substring(to index: Int) -> String {
        return self[0 ..< max(0, index)]
    }
    
    subscript (r: Range<Int>) -> String {
        let range = Range(uncheckedBounds: (lower: max(0, min(length, r.lowerBound)),
                                            upper: min(length, max(0, r.upperBound))))
        let start = index(startIndex, offsetBy: range.lowerBound)
        let end = index(start, offsetBy: range.upperBound - range.lowerBound)
        return String(self[start ..< end])
    }
}
