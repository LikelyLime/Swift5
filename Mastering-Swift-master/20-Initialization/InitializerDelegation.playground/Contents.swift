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
 # Initializer Delegation
 
 ## Value Type
 */
//Initializer Delegation의 경우에는 init의 중복을 최소화하고 모든속성을 효율적으로 초기화하기 위해서 사용한다.
//값형식은 상속이 불가능하고 Initializer종류가 하나이기 때문에 단순하다.

struct Size {
   var width: Double
   var height: Double

   init(w: Double, h: Double) {
      width = w
      height = h
   }

   init(value: Double) {
//      width = value
//      height = value
       self.init(w: value, h: value)
   }
}


/*:
 ## Class
 */
//class는 상속을 지원하고 init이 2개라 상대족으로 복잡
//class의 initializer delegation의 경우에는 3가지 규칙이 있다.
//1. subClass의 designated initializer의 경우에는 반드시 superClass의 designated initializer을 호출해야 한다.(Delegate Up)
//2. convenience initializer의 경우에는 반드시 같은 class의 initializer를 호출해야한다.(Delegate Across )
//3. convenience initializer을 호출할 때 최종적으로 같은 class의 designated initializer을 호출해야한다.

class Figure{
    let name: String
    init(name: String){
        self.name = name
    }
    
    convenience init(){
        self.init(name: "unknown")//Delegate Across
    }
}

class Rectangle: Figure{
    var width = 0.0
    var height = 0.0
    
    init(n: String, w: Double, h:Double){
        width = w
        height = h
        super.init(name: n)
    }//designated initializer로서 마지막에 상속받은 designated initializer을 호출(Delegate Up)
    
    convenience init(value: Double){
        self.init(n: "rect", w: value, h: value)
    }
}

class Square: Rectangle{
    convenience init(value: Double) {
        self.init(n: "square", w: value, h: value)
    }
    
    convenience init(){
        self.init(value: 0.0)
    }
}
//속성초기화의 경우에는 sub -> super로 올라가면서 초기화 되며
//중간에 초기화 하지 못하는 속성이 있다면 중간에 초기화 실패로 더이상 진행되지 않는다.
















