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
 # Property Requirements
 ![property](property.png)
 */

//protocol에서는 var키워드만 사용이 가능하다.
//단 var의 경우에는 가변성과는 상관이 없다.

protocol Figure {
    var name: String{ get }
}

struct Rectangle: Figure{
    //프로토콜에 선언되어있는 부분을 형식에 추가해야한다.
    let name = "Rect"
}

struct Triangle: Figure{
    var name = "Triangle"
}
//protocol의 경우에는 최소 요구사항이기 때문에 get만 선언을 하였어도 읽기 전용으로 선언해야 하는 것은 아니다.


//구조체를 선언하고 계산 속성 추가
struct Circle: Figure{
    var name: String{
        return "Circle"
    }
}

protocol Figure1 {
    var name: String{ get set }
}
//get 과 set이 선언되어 있기 때문에 읽기와 쓰기가 되어야 한다.
struct Rectangle1: Figure1{
    //let의 경우에는 쓰기가 안되기 때문에 항상 var를 사용해야한다.
    var name = "Rect"
}
struct Circle1: Figure1{
    var name: String{
        get{
            return "Circle"
        }
        set{
            
        }
    }
}

protocol Figure2 {
    static var name: String{ get set }
    //static으로 선언하면 모든 속성을 형식으로 정의해야한다.
}
struct Rectangle2: Figure2{
    static var name = "Rect"
}
struct Circle2: Figure2{
    static var name: String{
        get{
            return "Circle"
        }
        set{
            
        }
    }
}
struct Triangle2: Figure2{
    static var name = "Triangle"
}
//overriding를 하고싶다면 struct말고 class로 선언해야한다.

