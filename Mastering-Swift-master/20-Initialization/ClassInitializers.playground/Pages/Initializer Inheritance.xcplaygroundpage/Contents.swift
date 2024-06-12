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
 # Initializer Inheritance
 */
class Figure {
   var name: String

   init(name: String) {
      self.name = name
   }

   func draw() {
      print("draw \(name)")
   }
    
    convenience init(){
        self.init(name: "unknown")
    }
}

class Rectangle: Figure {
    var width: Double = 0.0
    var height: Double = 0.0
    init(name: String, width: Double, height: Double){
        //self.name = name
        self.width = width
        self.height = height
        super.init(name: name)  //상속된 속성의 초기화는 상속된 init에 맡긴다.
    }
    
    override init(name: String){
        self.width = 0
        self.height = 0
        super.init(name: name)
    }
    convenience init(){
        self.init(name: "unknown")
    }//convenience의 경우에는 super클래스를 호출 할 수 없다. 그래서 override한 init을 호출한다.
}











//: [Next](@next)
