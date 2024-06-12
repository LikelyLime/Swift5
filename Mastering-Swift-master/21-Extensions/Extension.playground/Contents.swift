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
 # Extension
 ![syntax](extension.png)
 ![syntax2](extension-protocol.png)
 */
//형식의 확장
//class, struct, enumeration, protocol
//멤버의 확장은 가능하지만 기존에 있던 멤버를 overriding하는 것은 불가능
 
struct Size {
    var width = 0.0
    var height = 0.0
}

extension Size{
    var area: Double{
        return width * height
    }
}

let s = Size()
s.height
s.width
s.area

//protocol구현
extension Size: Equatable{
    public static func == (lhs: Size, rhs: Size) -> Bool{
        return lhs.width == rhs.width && lhs.height == rhs.height
    }
}
