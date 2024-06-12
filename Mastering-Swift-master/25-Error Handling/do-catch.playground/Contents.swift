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
 # do-catch Statements
 ![do-catch](do-catch.png)
 */

enum DataParsingError: Error {
   case invalidType
   case invalidField
   case missingRequiredField(String)
}

func parsing(data: [String: Any]) throws {
   guard let _ = data["name"] else {
      throw DataParsingError.missingRequiredField("name")
   }
   
   guard let _ = data["age"] as? Int else {
      throw DataParsingError.invalidType
   }
   
   // Parsing
}
//catch문의 경우 가장 까다로운 조건부터 작성한다.
//catch문에 조건이 없는 경우 가장 마지막에 작성하지 않으면 밑에있는 catch문의 경우 작동하지 않는다.
func handleError() throws{
    //함수안에서 error처리를 진행할 경우 모든 error에대한 정의를 해주어야 한다.
    //handleError() throws라고 선언을 한다면 invlidType에러를 제외한 에러의 경우
    //handleError를 선언한 부분에다 에러를 던진다.
    do{
        try parsing(data: ["name" : ""])
    }  catch DataParsingError.invalidType{
        //위의 parsing함수의 두번째 guard문으로 에러가 발생했을때 들어오는 catch문
        print("invalid type error")
    }
}
func handleError1() throws{
    //두번째는 catch문만 패턴없이 사용하는 방법이다.
    do{
        try parsing(data: ["name" : ""])
    }  catch {
        //error는 프로토콜이기 때문에 타입케스팅이 필요
        if let error = error as? DataParsingError{
            switch error{
            case .invalidType:
                print("invalid type")
            default:
                print("handle error")
            }
        }
        
    }
}
