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
 # Deinitializer
 ![deinit](deinit.png)
 */
//Deinitializer  소멸자 : 인스턴스가 메모리에서 사라지기 전에 부가적인 정리작업을 하는 용도로 사용한다.
//class전용
//무조건 하나만 정의해야한다.
//실행은 우리가 직접하는 것이 아니라 인스턴스가 메모리에서 사라질때 자동으로 실행한다.

class Size {
   var width = 0.0
   var height = 0.0
}

class Position {
   var x = 0.0
   var y = 0.0
}

class Rect {
   var origin = Position()
   var size = Size()
    deinit{
        print("deinit \(self)")
    }
}


var r: Rect? = Rect()
 r = nil
// Deinitializer은 보통은 잘 사용할 일이 없지만 파일 연결이나 네트워크 연결처럼 자동으로 정리되지 않는 리소스제거나
// 디버그용도로 선언하여 사용한다.
