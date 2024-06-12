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
 # Initialization
 
 ## Default Initializer
 */









/*:
 ## Initializer Syntax
 ![initializer](initializer.png)
 ![call](call.png)
 */
class Postion{
    var x = 0.0
    var y: Double
    var z: Double?  //optional로 초기화 시 자동으로 nil로 초기화
    //defualt init의 경우에는 컴파일러가 자동으로 생성해 준다.
    init(){
        y = 0.0
    }
}

class sizeObj{
    var width = 0.0
    var height = 0.0
    init(width: Double, height: Double){
        self.width = width
        self.height = height
    }
    
    convenience init(value: Double){
//        self.width = value
//        self.height = value  될수 있으면 중복을 없앤다.
        self.init(width: value, height: value)
    }
    
}






/*:
 ## Memberwise Initializer
 */
struct SizeValue{
    var width = 0.0
    var height = 0.0
}
//구조체를 만들었을 때 디폴트 initializer와 함깨 자동으로 제공됨
let s = SizeValue()
SizeValue(width: 1.2, height: 3.4)




