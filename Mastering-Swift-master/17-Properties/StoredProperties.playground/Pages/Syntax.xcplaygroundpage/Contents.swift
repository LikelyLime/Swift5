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
 # Stored Properties
 ![syntax](syntax1.png)
 */
  
//저장 속성
//인스턴스로 이루어져 있음으로 선언을 할때마다 새로운 메모리에 할당이 된다.
//var키워드로 하면 변수저장 속성
//let은 상수저장 속성
class Person{
    let name: String = "John Doe"
    var age : Int = 33//var이기 때문에 변경 가능
}
struct Person1{
    let name: String = "John Doe"
    var age : Int = 33//var이기 때문에 변경 가능
}



/*:
 # Explicit Member Expression
 ![syntax](syntax2.png)
 */
let p = Person()
p.name  //점문법(Dot Syntax)를 swift에서는 명시적 멤버 표현식(Explicit Member Expression)
p.age   //이라고 한다.

//만약 속성을 변경하고 싶다면
p.age = 30
//다만 name의 경우에는 let으로 선언하기 때문에 변경 불가능


//구조체의 경우에는 상수에 저장되어 모든 속성이 상수가 되어진다.
//이런경우 p1을 var로 변경하면 속성값을 변경할 수 있다.
var p1 = Person1()
p1.name
p1.age

p1.age = 30








/*:
 # Lazy Stored Properties
 ![lazy](lazy.png)
 ![lazy-syntax](lazy-syntax.png)
 */
//저장 지연속성
//기본적으로 초기화는 인스턴스와 초기화 되는 시점이 같다.
//저장 지연속성의 경우에는 초기화가 요소에 접근 시 초기화가 이루어진다.
//그렇기 때문에 저장지연속성의 경우 인스턴스가 초기화 이후 개별적으로 초기화되기 때문에
//항상 var로 선언되어야 한다.
struct Image{
    init(){
        print("new Image")
    }
}

struct BlogPost{
    let titke: String = "Title"
    let content : String = "Content"
    lazy var attachment : Image = Image()
    
    let date: Date = Date()
    lazy var formattedDate: String = {
        let f = DateFormatter()
        f.dateStyle = .long
        f.timeStyle = .medium
        return f.string(from: date)
    }() //클로저가 ()를 쓴다면 초기화될때 실행된다
}
//lazy를 선언하기 전에는 콘솔이 출력되었지만 선언 후에는 출력되지않음
//또한 구조체를 선언한 부분에도 let이면 값을 변경 할 수 없기 때문에 var를 써야한다.
var post = BlogPost()
post.attachment




