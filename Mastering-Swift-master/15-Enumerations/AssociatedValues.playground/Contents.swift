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
 # Associated Values
 ![associated-values](associated-values.png)
 */
//연관값
//
//enum VideoInterface: String{
//    case dvi = "1028X768"
//    case hdmi = "2048X1536"
//    case displayPort = "3840X2160"
//}


enum VideoInterface{
    case dvi(width: Int, height: Int)
    case hdmi(Int, Int, Double, Bool)
    case displayPort(CGSize)
}

var input = VideoInterface.dvi(width: 2048, height: 1536)

switch input{
case .dvi(2048, 1536):
    print("dvi 2048 x 1536")
case .dvi(2048, _)://와일드 카드 사용가능
    print("dvi 2048 x Any")
case .dvi:
    print("dvi")
case .hdmi(let width, let height, let version, var audioEnable):
    print("hdmi \(width) x \(height)")
case let .displayPort(size):
    print("dp") //모든 연관값을 동일한 값으로 바인딩 한다면 case다음으로 let을 붙이는 표기도 가능
    //열거형을 매칭하는 Pattern을 Enumeration Case Pattern이라고 한다.
}

input = .hdmi(3840, 2160, 2.1, true)
//input의 값에는 videoInterface의 값이 있지어서 dvi값이든 hdmi든 displayport중 하나만 있으면 된다.






