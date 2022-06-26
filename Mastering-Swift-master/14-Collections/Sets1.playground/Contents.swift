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
import Foundation

/*:
 # Set
 ## Set Type
 ![set-type](set-type.png)
 */
//집합을 구현한것 검색속도가 중요할때 배열대신 사용(이유는 hashing기법을 사용하기 때문)
//값이 중복되지 않으며 정렬되지도 않는다.

//set은 배열과 선언하는 방식이 같기 때문에 타입을 지정해줘야한다.
let set = [1, 2, 2, 3, 3, 3]
set.count
let set2:Set<Int> = [1, 2, 2, 3, 3, 3]
set2.count







/*:
 ## Inspecting a Set
 */
//set의 갯수
set.count

//비워져있는지 여부
set.isEmpty








/*:
 ## Testing for Membership
 */
//가장 많이 사용되는 부분은 요소의 검색이다.
set.contains(1)










/*:
 ## Adding and Removing Elements
 */
//새롭게 빈 set생성
var words = Set<String>()

//새로운 값을 추가
var insertResult = words.insert("Swift")
insertResult.inserted// 추가여부
insertResult.memberAfterInsert// 추가된 요소

//중복 허용이 되지 않는다.
insertResult = words.insert("Swift")
insertResult.inserted// 추가여부
insertResult.memberAfterInsert// 추가된 요소

//update메서드는 upsert형식으로 동작한다.
var update = words.update(with: "Swift")
update
//update가 된다면 update된 값을 리턴해주고

update = words.update(with: "Apple")
update
//값이 추가된다면 nil을 반환한다.

//값을 삭제할때는 remove메서드사용
words.remove("Swift")//삭제된 값 리턴
words
//값이 없는 값을 삭제할 때는 nil리턴
words.remove("Ghost")
//전체를 삭제할때는 removeAll
words.removeAll()



