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
 # Computed Properties
 ![computed](computed.png)
 */
//메모리를 할당 받는 것이 아니라 다른 속성에 저장된 값을 읽어서 필요한 값을 계산하여 리턴하거나
//전달받은 속성을 다른 속성에 저장한다.
//속성에 접근 할 때마다 다른 값이 리턴될 수 있다.
//항상 var를 실행한다., 열거형에도 추가 할 수 있다.
//형식추론을 사용할 수 없어 항상 자료형을 입력해야한다.
class Person {
   var name: String
   var yearOfBirth: Int

   init(name: String, year: Int) {
      self.name = name
      self.yearOfBirth = year
   }
    
    var age: Int{
        get{
            let calender = Calendar.current
            let now = Date()
            let year = calender.component(.year, from: now)
            return year - yearOfBirth
        }
        set{
            let calender = Calendar.current
            let now = Date()
            let year = calender.component(.year, from: now)
            yearOfBirth = year - newValue
        }
    }
}

let p = Person(name: "John Doe", year: 2002)
p.age


//setter만 지워서 읽기 전용 속성으로 만들수는 있지만 setter전용 속성은 만들 수 없음










/*:
 ## Read-only Computed Properties
 ![readonly-1](readonly-1.png)
 ![readonly-2](readonly-2.png)
 */












