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
 # Automatic Reference Counting
 */
//메모리 관리모델
//stack에 저장되는 값은 자동으로 제거되기 때문에 특별한 관리는 필요 없다.
//heap의 경우에는 값을 직접 삭제해 줘야한다.
//메모리 관리모델의 경우 class인스턴스의 메모리를 관리한다.
//object-c : MRC, ARC
//swift : ARC

//strong Reference : 강한참조
// 기본적인 참조형식으로 소유할때마다 참조카운트가 1씩증가 소유를 포기할때마다 1씩감소
//
class Person {
   var name = "John Doe"
   
   deinit {
      print("person deinit")
   }
}

var person1: Person?
var person2: Person?
var person3: Person?

person1 = Person() //강한참조
person2 = person1
person3 = person1 //참조카운트 3

person1 = nil //소유권 포기
person2 = nil
person3 = nil //참조카운트 0





