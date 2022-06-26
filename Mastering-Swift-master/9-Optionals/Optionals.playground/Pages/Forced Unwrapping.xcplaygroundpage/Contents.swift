//
//  Copyright (c) 2018 KxCoding <kky0317@gmail.com>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

//: [Previous](@previous)

import Foundation

/*:
 # Unwrapping
 */










/*:
 ## Forced Unwrapping
 ![forced-unwrapping](forced-unwrapping.png)
 */
func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    
    var test: [Int] = []
    var result: [[Int]] = [];

    for i in 0..<arr1.count{
        for j in 0..<arr1[i].count{
            print(arr1.count)
            let sum = arr1[i][j] + arr2[i][j]
            test.append(sum)
            
        }
        result.append(test)
        test.removeAll()
    }
    return result
}


//let test1: [[Int]] = solution([[1,2], [3,4]], [[3,4], [5,6]])
let test2: [[Int]] = solution([[1], [2]], [[3], [4]])





