//
//  Copyright (c) 2019 KxCoding <kky0317@gmail.com>
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

import Foundation

/*:
 # Result Type
 */

enum NumberError: Error {
   case negativeNumber
   case evenNumber
}

enum AnotherNumberError: Error {
   case tooLarge
}

func process(oddNumber: Int) throws -> Int {
   guard oddNumber >= 0 else {
      throw NumberError.negativeNumber
   }
   
   guard !oddNumber.isMultiple(of: 2) else {
      throw NumberError.evenNumber
   }
   
    guard oddNumber < 1000 else{
        throw AnotherNumberError.tooLarge
    }
    
   return oddNumber * 2
}

//do {
//   let result = try process(oddNumber: 10001)
//   print(result)
//    //
//} catch let myErr as NumberError {
//    switch myErr{
//    case .negativeNumber:
//        print("nevive number")
//    case .evenNumber:
//        print("even number")
//    }
//
//}catch{
//    print(error.localizedDescription)
//}

let result = Result{ try process(oddNumber: 1) }
switch result{
case .success(let data):
    print(data)
case .failure(let error):
    print(error.localizedDescription)
}

//Delayed Error handling : 에러를 처리하는 시점이 함수를 호출하는 시점에서 작업결과를 사용하는 시점으로 이동
func processResult(oddNumber: Int)  -> Result<Int, NumberError> {
   guard oddNumber >= 0 else {
//       return Result.failure(NumberError.negativeNumber)
       return .failure(.negativeNumber)
   }
   
   guard !oddNumber.isMultiple(of: 2) else {
       return .failure(.evenNumber)
   }
   //AnotherNumberError는 NumberError가 아니기 때문에 리턴할 수없다,
//    guard oddNumber < 1000 else{
//        throw AnotherNumberError.tooLarge
//    }
    
    return .success(oddNumber * 2)
}

let result2 = processResult(oddNumber: 1)

switch result2{
case .success(let data):
    print(data)
case .failure(let error):
    print(error.localizedDescription)
}
//성공한 케이스만 처리 실패는 무시
switch result2{
case .success(let data):
    print(data)
case .failure(let error):
    //1. break
    //2. default\
    print(error.localizedDescription)
}

if let result = try? result2.get(){
    print(result)
}
//throw는 error의 타입을 특정하지 못하지만 Result의 경우에는 error의 타입을 특정할 수있다.
//그렇기 때문에 형식 안전성이 높다,.
//타입케스팅이 필요없고 추론을 통해 코드가 간결해진다.











