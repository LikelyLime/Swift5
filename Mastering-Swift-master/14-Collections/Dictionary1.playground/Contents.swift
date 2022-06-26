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
 # Dictionary
 ## Dictionary Literal
 ![dictliteral](dict-literal.png)
 */

var dict = ["A" : "Apple", "B" : "Banana"]
// dictionary의 빈값 만들기
dict = [:]













/*:
 ## Dictionary Type
 ![type1](dict-type.png)
 ![type2](dict-type2.png)
 */
let dict1: Dictionary<String, Int>
let dict2: [String: Int]













/*:
 ## Creating a Dictionary
 */
let words = ["A": "Apple", "B": "Banana", "C": "City"]
//비어있는 dictionary만들기
let emptyDict: [String: String] = [:]
let emptyDict2 = [String: String]()
let emptyDict3 = Dictionary<String, String>()










/*:
 ## Inspecting a Dictionary
 */
//딕셔너리에 있는 elem의 갯수 구하기
words.count
//딕셔너리에 값이 있는지 확인하기
words.isEmpty

















/*:
 ## Accessing Keys and Values
 */
//디셔너리의 값에 접근하여면 서브스크립트 함수를 이용한다.
words["A"]

//만약 키값이 없는 값이면 nil반환, default를 써주면 nil대신 리턴
let a  = words["E"]
let b = words["E", default: "Empty"]

//딕셔너리는 words.keys_키목록, words.values 을 통해서 for문으로 열거 가능
for k in words.keys.sorted(){
    print(k)
}

for v in words.values{
    print(v)
}
//dictionary의 경우에는 array로 변환이 가능하다.
let keys = Array(words.keys)
let values = Array(words.values)








