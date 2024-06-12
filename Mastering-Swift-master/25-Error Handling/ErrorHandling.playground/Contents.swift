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
 # Error Handling
 
 ![throw](throw.png)
 ![throws](throws.png)
 */
// 보통 error가 발생하면 프로그램이 다운되지만 예상되는 error를 처리한다면 다운되는 것을 막을 수 있다.
// Compile Time Error : 주로 문법과 관련된 버그 컴파일러가 알려주는 간단한 정보로 처리가 가능
// Runtime Error : 프로그램이 실행되는 동안 나오는 버그 디바이스나 리소스의 문제로 버그가 나올 수 있다.

//에러 형식- 스위프트 에러처리 시스템에 통합됨
enum DataParsingError: Error{
    case invalidType
    case invalidField
    case missingRequiredDield(String)
    
}
//throw - 코드블록에서 에러를 던질 수 있다고 선언되어 있어야함
//throws - 함수 메서드, 생성자, 클로져 문법에서 파라미터 뒤에 존재하며 에러를 던질수 있다고 선언해주는것

func parsing(data: [String: Any]) throws{
    guard let _ = data["name"] else{
        throw DataParsingError.missingRequiredDield("name")
    }
    
    guard let _ = data["age"] as? Int else{
        throw DataParsingError.invalidType
    }
    //Parsing
    
}





/*:
 # try Statements
 ![try](try.png)
 */

try? parsing(data: [:])
// 에러 처리 세가지 방법
//1. do-catch Statements
//2. try Expression + Optional Binding
//3. hand over

