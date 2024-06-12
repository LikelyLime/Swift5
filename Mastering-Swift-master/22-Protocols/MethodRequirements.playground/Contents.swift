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
 # Method Requirements
 ![method](method.png)
 */
//protocol에서 method를 선언할 때는 body부분은 작성하지 않는다.

protocol Resettable{
    func reset()
}

class Size: Resettable{
    var width = 0.0
    var height = 0.0
    
    func reset(){
        width = 0.0
        height = 0.0
    }
}
//protocol은 mutating메서드에따라 method를 구분한다.
protocol Resettable1{
    mutating func reset()
}
//반드시 struct에서만 구현해야 하는 것은 아니다.
struct Size1: Resettable1{
    var width = 0.0
    var height = 0.0
    //값형식에서 속성을 변경하려면 mutating메서드 사용
    mutating func reset(){
        width = 0.0
        height = 0.0
    }
}
class Size2: Resettable1{
    var width = 0.0
    var height = 0.0
    // class에서는 mutating이 없어도 사용할 수 있다.
    func reset(){
        width = 0.0
        height = 0.0
    }
}

protocol Resettable2{
    static func reset()
}
class Size3: Resettable2{
    var width = 0.0
    var height = 0.0
    func reset(){
        width = 0.0
        height = 0.0
    }
    static func reset() {
        //오버라이딩 불가능
        //이 부분을 class로 선언한다면 overridng이 가능함과 동시에 protocol조건도 맞춤
    }
}
