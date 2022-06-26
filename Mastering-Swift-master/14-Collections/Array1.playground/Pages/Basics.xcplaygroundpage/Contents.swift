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
 # Array Basics
 ## Creating an Array
 */
let nums = [1, 2, 3]

let emptyArray:[Int] = []
let emptyArray2 = Array<Int>()
let emptyArray3 = [Int]()

//배열 같은 숫자로 채우기
let zeroArray = [Int](repeating: 0, count: 10)











/*:
 ## Inspecting an Array
 */
//배열의 크기
nums.count

//배열이 비어있는지 확인하기
nums.isEmpty






/*:
 ## Accessing Elements
 */

let fruits = ["Apple", "Banana", "Melon"]
fruits[0]

fruits[0...1]

fruits[fruits.startIndex]
fruits[fruits.index(before: fruits.endIndex)]
fruits[fruits.startIndex...fruits.index(before: fruits.endIndex)]

//배열의 시작과 끝을 조회하는 함수 옵셔널로 리턴하기에 값이 없다면 nil반환
fruits.first
fruits.last



