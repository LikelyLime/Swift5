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
 # self
 ![self](self.png)
 */
//self의 경우에는 인스턴스생성시 자동으로 생성된다.

class Size1 {
   var width = 0.0
   var height = 0.0
    
    func calcArea() -> Double{
        return self.width * self.height
        //주로 self의 경우에는 생략
    }
    
    var area: Double{
        return self.calcArea()
    }
    //self 생략이안되는 경우
    func update(width: Double, height: Double){
        self.width = width
        self.height = height
    }
    //클로저에서 인스턴스에 접근할때는 self가 생략 불가능
    func doSomething(){
        let c = {self.width * self.height}
    }
    
    static let nuit = ""
    static func doSomething(){
        //self.width 형식메서드에서는 self로 접근하는것이 허용되지 않는다.
        //단 같은 static으로 선언되어있는 부분은 접근이 가능하다.(self생략가능)
        self.nuit
    }
}
struct Size {
   var width = 0.0
   var height = 0.0
    
    mutating func reset(value: Double){
//        width = value
//        height = value
        //인스턴스가 새로운 인스턴스로 생성된다.
        //생성자로 초기화 할 수 있음
        //class에서는 불가능
        self = Size(width: value, height: value)
    }
}


















/*:
 # super
 ![super](super.png)
 */
//super는 상속에 쓰이기 때문에 class에서만 사용이 가능하다

