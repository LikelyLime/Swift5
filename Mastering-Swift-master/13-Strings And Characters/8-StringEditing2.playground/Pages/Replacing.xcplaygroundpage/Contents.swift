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

import Foundation

/*:
 # Replacing Substrings
 */
var str = "Hello Object-C"
if let index = str.range(of: "Object-C"){
    str.replaceSubrange(index, with: "Swift")
}

if let name = str.range(of: "Hello"){
    let s = str.replacingCharacters(in: name, with: "Hi")
    s
}

//replacingOccurrences메서드는 문자열을 찾아서 with으로 변환시켜준다.(대소문자 구분)
var s = str.replacingOccurrences(of: "swift", with: "AweSome")

var s2 = str.replacingOccurrences(of: "swift", with: "AweSome", options: [.caseInsensitive])
//: [Next](@next)
