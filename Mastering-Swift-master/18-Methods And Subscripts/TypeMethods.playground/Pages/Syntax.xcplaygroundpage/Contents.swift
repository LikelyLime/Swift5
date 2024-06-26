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
 # Type Methods
 ![static-func](static-func.png)
 ![class-func](class-func.png)
 ![call](call.png)
 */
//형식에 연관된 메서드
//static 이나 class를 선언되며 static의 경우에는 오버라이딩이 안된다.
class Circle{
    static let pi = 3.14
    var radius = 0.0
    
    func getArea() -> Double {
        return radius * radius * Circle.pi
    }
    
    static func printPi(){
        print(pi)
    }
}


Circle.printPi()

class StrokeCircle: Circle{
    //이 부분은 stiatic func printPi를 class로 변경하면 해결된다.
//    override static func printPi(){
//        print(pi)
//    }
}













