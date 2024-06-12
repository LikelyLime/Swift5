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
 # Value Types & Reference Types
 */

struct SizeValue {
   var width = 0.0
   var height = 0.0
}

var value = SizeValue()// stack에 생성


var value2 = value // stack의 값을 복사하여 다른 stack에 저장
value2.width = 1.0  //value2의 stack에 있는 값만 변경
value2.height = 2.0

value
value2


class SizeObject {
   var width = 0.0
   var height = 0.0
}

var object = SizeObject()//heap에 값을 저장하고 stack에 heap의 주소를 넘겨 저장한다.


var object2 = object//stack에는 object의 heap주소가 새로 생성되며 heap에는 메모리가 생성되지 않는다.

object2.width = 1.0// heap의 값이 변경되기 때문에 object와 object2의 값이 전부 변경된다.
object2.height = 2.0

object
object2



let v = SizeValue()//let은 값형식에 특별한 제약을 만든다.
//let의 경우에는 stack에 저장되어있는 메모리값을 변경하지 못하게 만드는 제약을 건다.


let o = SizeObject()// 하지만 참조형식의 stack에는 heap의 주소만 있고 값은 heap에 있기때문에
o.width = 1.0   // let은 stack만 변경을 못하도록 막기 때문에 heap의 값은 변경이 가능하다.
o.height = 2.0

//value Type ==, !=
//비교연산자 는 값형식을 비교할때 stack에 있는 값을 비교한다.

//reference Type ==, !=, ===, !==
//비교연산자 는 참조형식을 비교할때 heap에 있는 값을 비교한다. 항상 실제 값을 비교
//항등연산자는 참조형식의 주소가 저장되어있는 stack에 있는 값을 비교한다.









