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
 # Subscripts
 ![subscript](subscript.png)
 */
let list = ["A", "B", "C"]

list[0] //subscript문법










/*:
 ![subscript-syntax](subscript-syntax.png)
 */

//메서드나 계산문법과 비슷
//파라미터 생략 불가능
//리턴형 생략 불가능
//get블럭은 생략불가능

class List{
    var data = [1, 2, 3]
    
    subscript(index: Int) -> Int {
        get{
            return data[index]
        }
        set{
            data[index] = newValue
        }
    }
}

var l = List()
l[0]

l[1] = 123

l[0]//파라미터를 두개를 넘기거나 다른 타입을 넣으면 에러발생

struct Matrix {
    var data = [[1,2,3], [4, 5, 6], [7, 8, 9]]
    
    subscript(row: Int, col:Int) -> Int{
        
        return data[row][col]
    }
}

let m = Matrix()
//m[0][0]
m[0,0]// 만약 범위가벗어난다면 Index out of range에러가 뜬다.



