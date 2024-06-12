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
 # Raw Values
 ![Raw Values](raw-values.png)
 */
//원시값은 필수가 아니며 case와 함깨 다른 값을 저장할 때 선택적으로 사용
enum Alignment: Int{
    case left
    case right = 100
    case cneter
    
}

//원시값의 자료형이 추가된다.
// 자료값은 String Character, Number 로 제한된다.
//원시값은 향후 값변경이 불가능 하다.
//값을 저장하지 않으면 이전값을 기준으로 값을 타입에 맞게 저장한다.

Alignment.left.rawValue //0
Alignment.right.rawValue //100
Alignment.cneter.rawValue //101

//생성자로 원시값이 접근이 가능하다 단, rawValue가 없는값을 입력하면 nil이 출력된다.
Alignment(rawValue: 0)

enum Weekday: String{
    case sunday
    case monday = "Monday"
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
}
//String타입의 경우에는 기준값이 case이기 때문에 case와 동일한 값을 String타입으로 리턴한다.
Weekday.sunday.rawValue
Weekday.monday.rawValue

enum ControlChar : Character {
    case Tab = "\t"
    case newLine = "\n"
}
//원시값의 타입이 Character라면 case도 character여야하지만 원시값을 character로 선언한다면 오류가 나지 않는다.











