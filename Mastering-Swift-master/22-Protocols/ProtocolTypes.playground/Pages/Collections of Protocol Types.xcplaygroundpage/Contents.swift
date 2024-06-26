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
 # Collections of Protocol Types
 */
//상속과 비슷하게 선언할 수 있다.

protocol Figure {
   func draw()
}

struct Triangle: Figure {
   func draw() {
      print("draw triangle")
   }
}

class Rectangle: Figure {
   func draw() {
      print("draw rect")
   }
}

struct Circle: Figure {
   var radius = 0.0

   func draw() {
      print("draw circle")
   }
}

let t = Triangle()
let r = Rectangle()
let c = Circle()


//let list = [t, r, c] instance의 형식이 모두 다르고 값형식과 참조 형식이 혼재되어 오류발생
let list: [Figure] = [t, r, c]
for item in list{
    item.draw()
//    item.raidus Circle에만 있는 속성은 불러오지 못한다.
    if let c = item as? Circle{
        c.radius
    }
}




