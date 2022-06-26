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
 # String Interpolation
 ![placeholder](placeholder.png)
 */

var str = "12.34KB"

let size = 12.34

print(String(size) + "KB")

str = "\(size)KB"
print(str)










/*:
 ## Format Specifier
 ![format-specifier](format-specifier.png)
 */



str = String(format: "%.1fKB", size)
//%.1fKB 포멧 문자열
//%.1f 포멧 지정자

String(format: "Hello, %@", "Swift")
//%@은 문자열을 대체한다.
//%d는 정수입니다. 만약에 실수를 넣는다면0이 출력되고  실수를 출력하고 싶다면 %f를 출력하면 된다.
//%F의 경우에는 범위를 지정하지 않으면 컴파일러 재량으로 소숫점을 보여준다.

String(format: "[%d]", 123)
String(format: "[%10d]", 123)
String(format: "[%-10d]", 123)


let firstName = "sihun"
let lastName = "beak"

let korFormat = "그녀의 이름은 %2$@ %1$@ 입니다."
let engFormat = "Her name is %@ %@."

String(format: korFormat, firstName, lastName)
String(format: engFormat, firstName, lastName)


//문자열에는 \하나만 사용하지 못함
//이스케이프 시퀀스 \

print("A\tB") //A와 B사이에 tab이생긴다.
print("C\nD") //다른 라인이동
print("\"Hello\" He said.") //""호출하는 방법


struct Size{
    var width = 0.0
    var height = 0.0
}

let s = Size(width: 1.2, height: 3.4)
print("\(s)")
//과거 코드
//extension Size : CustomStringConvertible{
//    var description: String{
//        return "\(width) x \(height)"
//    }
//}

extension String.StringInterpolation{
    mutating func appendInterpolation(_ value: Size){
        appendInterpolation("\(value.width) x \(value.height)")
    }
    
    mutating func appendInterpolation(_ value: Size, Style: NumberFormatter.Style){
        let formatter = NumberFormatter()
        formatter.numberStyle = Style
        if let width = formatter.string(for: value.width),
            let height = formatter.string(for: value.height) {
            appendInterpolation("\(width) x \(height)")
        }else{
            
            appendInterpolation("\(value.width) x \(value.height)")
        }
    }
}
print("\(s)")
print("\(s, Style: .spellOut)")




