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
 # Enumerations
 ![enum](enum.png)
 */

//열거형의 요소를 case, enumeration case라한다.
  //독립적인 자료형
//코드의 안정성과 가독성이 올라간다.

//let left = 0
//let center = 1
//let right = 2
//var alignment = center


let left = "left"
let center = "center"
let right = "right"
var alignment = center




/*:
 ## Syntax
 ![syntax](enum-syntax.png)
 */

//이름 중복 안됨
enum Alignment{
    case left
    case right
    case center
}

Alignment.center

var textAlignment = Alignment.center
//변수에 값을 변화시킬 때는 앞에 열거형을 알고 있기 때문에 생략이 가능하다
textAlignment = .left

//열거형을 비교하고 싶을 때
if textAlignment == .center{
    //열거형은 값이기 때문에 비교문으로 비교가 가능하다.
}

//switch 문으로 작성하면 깔끔해짐
switch textAlignment{
case .left:
    print("left")
case .right:
    print("right")
case .center:
    print("center")
}

// if 문으로 작성하기
if textAlignment == .left{
    print("left")
}else if textAlignment == .right{
    print("right")
}else{
    print("center")
}












