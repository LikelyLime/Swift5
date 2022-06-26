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
 # Comparing Dictionaries
 */

let a = ["A": "Apple", "B": "Banana", "C": "City"]
let b = ["A": "Apple", "C": "City", "B": "banana"]
//딕셔너리의 순서는 상관없이 키와 값이 같다면 같은 딕셔너리라고 판단함 단 대소문자가 구분됨
a == b
a != b

//a.elementsEqual(b) { (lhs, rhs) -> Bool in
//    return lhs.key.caseInsensitiveCompare(rhs.key) == .orderedSame &&
//    lhs.value.caseInsensitiveCompare(rhs.value) == .orderedSame
//}
//대소문자 비교를 위와 같이 진행한다면 항상 같은 값을 받을 수 없기 때문에 항상 키값을 정렬한 다음 진행해야 한다.
let aKey = a.keys.sorted()
let bKey = b.keys.sorted()

aKey.elementsEqual(b.keys) { (lhs, rhs) -> Bool in
    guard lhs.caseInsensitiveCompare(rhs) == .orderedSame else{
        return false
    }
    guard let lv = a[lhs], let rv = b[rhs],
    lv.caseInsensitiveCompare(rv) == .orderedSame else{
        return false
    }
    return true
    
}



/*:
 # Finding Elements
 */

var words = ["A": "Apple", "B": "Banana", "C": "City"]
let c: ((String, String)) -> Bool = {
    $0.0 == "B" || $0.1.contains("i")
}

words.contains(where: c)

//값을 조건으로 검색 후 첫번째 인자를 주는 메서드 return을 튜플로 전달받음
words.first(where : c)
let r = words.first(where: c)
r?.key
r?.value

//조건을 만족시키는 모든값 리턴받는 메서드
words.filter(c)









