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
 # Initializer Requirements
 ![init](init.png)
 */
protocol Figure{
    var name: String { get }
    init(name: String)
}

//기본 init의 경우에는 memberwise initializer가 자동으로 재공됨
//물론 init를 따로 선언하는 것도 가능
struct Rectangle: Figure{
    var name: String
}

protocol Figure1{
    var name: String { get }
    init(n: String)
}

struct Rectangle1: Figure1{
    var name: String
    init(n: String){
        name = n
    }
}
//class의 경우에는 상속을 고려해야하고 모든 subClass에서 protocol의 요구사항을 충족 시켜야 한다.
//그렇기 때문에 class에서는 생성자를 required를 사용하여 선언한다.
class Circle: Figure1{
    var name: String
    required init(n: String){
        name = n
    }
}

//예외사항
//final의 경우에는 더이상 상속이 되지 않음으로 required를 선언하지 않아도 된다.
final class Triangle: Figure1{
    var name: String
    init(n: String){
        name = n
    }
}
// 이 밑의 부분은 Figure1을 Circle이 protocol를 채용하기 때문에 중복이다
//class Oval: Circle, Figure1{
//
//}
class Oval: Circle{
    var prop: Int
    
    init(){
        prop = 0
        super.init(n: "Oval")
    }
    //convenience로 구현하여도 protocol요구사항에 맞출수 있다.
    //다만 required도 같이 사용해야한다.
    required convenience init(n: String){
        self.init()
    }
}
protocol GrayScale{
    init(white: Double)
}

struct Color: GrayScale{
//    init?(white: Double){
//Optional과 nonOptional타입을 같은 타입으로 판단하지않아 오류가 생긴다
//    }
    init!(white: Double){
    
    }
}
protocol GrayScale1{
    init?(white: Double)
}

struct Color1: GrayScale1{
    //protocol이 init?로 선언되어 있기 때문에 optional과 nonOptional둘다 가능
    init!(white: Double){
    
    }
}

