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
 # Instance Method
 ![Method](method.png)
 ![Call Method](call-method.png)
 */
//인스턴스 속성 처럼 특정 인스턴스와 연관된 동작을 구현
//보통 다른인스턴스 멤버를 기반으로 구현하기 때문에 매번 실행결과가 다르다
//일반 함수는 함수이름으로 실행하지만 인스턴스메서드의 경우에는 인스턴스이름으로 실행한다.

class Sample{
    var data = 0
    static var sharedData = 123
    func doSomething(){
        print(data)
        //sharedData
        Sample.sharedData
    }
    func call(){
        doSomething()
    }
}

let a = Sample()
a.data
a.doSomething()
a.call()

class Size{
    var width = 0.0
    var height = 0.0
    //class에서는 값을 변경 할 수 있지만
    //struct에서는 mutating을 fnuc앞에 선언해야지만 값을 변경 할 수 있다.
    func enlarge(){
        width += 1.0
        height += 1.0
    }
}
let s = Size()
s.enlarge()
s.width
s.height




















