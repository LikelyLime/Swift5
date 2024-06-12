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
 # Generic Types
 ![generic-type](generic-type.png)
 */

//Generic Type :

struct Color<T> {
    var red: T
    var green: T
    var blue: T
    
}

var c = Color(red: 128, green: 80, blue: 200)
c.blue // 형식이 Int
//c = Color(red: 128.0, green: 80.0, blue: 200.0) 이러한 경우는 제네릭타입이 달라짐으로 같은 변수에 담을 수 없다.

let d: Color<Int>// = Color(red: 128.0, green: 80.0, blue: 200.0) 만약 타입으로 선언한다면 직접적으로 제네릭 타입을 넣어줘야한다.

let arr: Array<Int>

let dict : Dictionary<String, Double>

//extension Color where T: FixedWidthInteger{
extension Color where T == Int{
    func getComponents() -> [T]{
        return [red, green, blue]
    }
}

let intColor = Color(red: 1, green: 2, blue: 3)
intColor.getComponents()

let dbColot = Color(red: 1.0, green: 2.0, blue: 3.0)
//dbColot.getComponents()//double형식 ///where TFixedWidthInteger를 축가하면 intger만사용가능

