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
 # Overloading
 */

func process(value: Int){
    print("1")
}
func process(value: String){
    print("2")
}

func process(value: String, anotherValue: String){
    print("3")
}
func process(_ value: String){
    print("4")
}


process(value: 0)
process(value: "sstr")
process(value: "str")
process("str")


func process(value: Double) -> Int{
    return Int(value)
}
func process(value: Double) -> String?{
    return String(value)
}

let result: Int = process(value: 12.34)//담는 변수가 있어야 한다 타입포함
let result2  = process(value: 12.34) as Int//타입추론형태 위와 같은 코드


struct Rectangle{
    func area() -> Double{
        return 0.0
    }
    static func area() -> Double{
        return 0.2
    }
}

let r = Rectangle()
r.area()
Rectangle.area()
