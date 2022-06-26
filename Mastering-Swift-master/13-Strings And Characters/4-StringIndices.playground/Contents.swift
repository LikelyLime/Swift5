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
import UIKit

/*:
 # String Indices
 */
let str = "Swift"
str.startIndex
let firstCh = str[str.startIndex]
print(firstCh)


let lastChar = str.index(before: str.endIndex)
//let lastCh = str[str.endIndex] endIndex의 경우에는 범위가 벗어나는 오류가 뜨기 때문에 항상 이전index를 가져와야 마지막 index를 가져온다.
let lastCh = str[lastChar]

print(lastCh)

let secondCharIndex = str.index(after: str.startIndex)
let secondChar = str[secondCharIndex]
print(secondChar)

let thirdCharIndex = str.index(str.startIndex, offsetBy: 2)
print(str[thirdCharIndex])













