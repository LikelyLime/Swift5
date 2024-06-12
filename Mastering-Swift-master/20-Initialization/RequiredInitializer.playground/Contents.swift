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
 # Required Initializer
 ![required](required.png)
 */

//Required Initializer 필수 생성자

class Figure {
   var name: String

   required init(name: String) {
      self.name = name
   }//required을 선언하면 반드시 subClass에서 구현을 해줘야한다.

   func draw() {
      print("draw \(name)")
   }
}

class Rectangle: Figure {
   var width = 0.0
   var height = 0.0
    
    init(){
        width = 0.0
        height = 0.0
        super.init(name: "unknown")
    }
    
    required init(name: String){
        width = 0.0
        height = 0.0
        super.init(name: name)
    }
}

//Figure의 init을 상속받는다.
//만약 Rectangle에서 name을 파라미터로 받는 init을 직접구현받고 싶다면
//Required Initializer을 사용하면 된다.
