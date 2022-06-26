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
 # Removing Substrings
 */
//마지막 index를 찾아서 삭제하기
var str = "Hello, AweSome Swift!!!"
let lastIndex = str.index(before: str.endIndex)
var removed = str.remove(at: lastIndex)

removed
str

removed = str.removeFirst()
str
str.removeFirst(2)
str

str.removeLast()
str
str.removeLast(2)
str

if let rang = str.range(of: "Awesome", options: [.caseInsensitive]){
    str.removeSubrange(rang)
    str
}
//전체 삭제
str.removeAll()
//만약 메모리만 남겨두고 싶을때
str.removeAll(keepingCapacity: true)



str = "Hello, AweSome Swift!!!"
 
var dropFirst = str.dropFirst()
str.dropFirst(2)
str.dropLast()
str.dropLast(3)
str.drop(while: {(ch) -> Bool in
    return ch != ","
})







