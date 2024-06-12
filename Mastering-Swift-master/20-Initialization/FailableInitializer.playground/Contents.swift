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
 # Failable Initializer
 ![failable](failable.png)
 */
//Failable Initializer : 초기화에 실패를 하더라도 nil을 리턴 하며 error가 나오지 않는다.
// init?의 경우에는 Optional형식으로 리턴하며 실패하면 nil을 반환한다.
// init!의 경우에는 강제추출되어 nonOptional형식으로 추출됩니다.다만 리턴에 실패하면 crush발생
struct Position {
   let x: Double
   let y: Double
    
    init?(x:Double, y: Double){
        guard x >= 0.0, y >= 0.0 else{return nil}
        self.x = x
        self.y = y
    }
    
    init!(value: Double){
        guard value >= 0.0 else{return nil}
//        self.x = value
//        self.y = value
        self.init(x: value, y: value)
    }
}

var a = Position(x: 12, y: 34)
a = Position(x: -12, y: 0)

var b = Position(value: 12)
b = Position(value: -12)
