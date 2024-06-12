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
 # Generics
 */
//Generics : 형식에 의존하지 않는 범용 코드 작성 가능 , 코드의 재사용성과 유지보수가 수월해지는 장점이 있다.
func swapInteger(lhs: inout Int, rhs: inout Int) {
   let tmp = lhs
   lhs = rhs
   rhs = tmp
}
// 위의 함수는 int일때만 정상적으로 기능한다.
var a = 10
var b = 20

swapInteger(lhs: &a, rhs: &b)
a
b


func swapInteger16(lhs: inout Int16, rhs: inout Int16) {
   // ...
}

func swapInteger64(lhs: inout Int64, rhs: inout Int64) {
   // ...
}

func swapDouble(lhs: inout Double, rhs: inout Double) {
   // ...
}


/*:
 ## Generic Function
 ![generic-function](generic-function.png)
 */
//type Parameter : 함수내부에서 파라미터나 리턴형식, 함수 body에서 사용된다.
//실제 타입으로 대체되는 placeHolder이다.
func swapValue<T>(lhs: inout T, rhs: inout T) {
   let tmp = lhs
   lhs = rhs
   rhs = tmp
}

a = 1
b = 2
swapValue(lhs: &a, rhs: &b)
a //2
b //1
var c = 1.2
var d = 3.4
swapValue(lhs: &c, rhs: &d)
c   //3.4
d   //1.2







//: [Next](@next)


