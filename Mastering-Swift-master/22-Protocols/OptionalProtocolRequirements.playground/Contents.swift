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
 # Optional Protocol Requirements
 ![optional](optional.png)
 */
//선택적 요구사항
// 여기서 optional은 optional형식이 아닌 선택적 의미
//@objc의 경우에는 swift를 object-c에서 사용할 수 있게 해주는 attr이다.
@objc protocol Drawable {
    @objc optional var strokeWidth: Double { get set }
    @objc optional var strokeColor: UIColor { get set }
   func draw()
    @objc optional func reset()
}
//@objc는 class전용
//@objc의 경우에는 자동으로 anyobject를 상속하기 때문에

class Rectangle: Drawable{
    func draw() {
        
    }
}

let r: Drawable = Rectangle()
r.draw()
//선택적 옵션에 접근하려면 옵셔널 체이닝이 필요하다
r.strokeWidth
r.strokeColor
//r.reset()은 옵셔널로 채용되어야 한다.
r.reset?()
