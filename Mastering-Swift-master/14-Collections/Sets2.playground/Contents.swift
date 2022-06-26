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
 # Comparing Sets
 */

var a: Set = [1, 2, 3, 4, 5, 6, 7, 8, 9]
var b: Set = [1, 3, 5, 7, 9]
var c: Set = [2, 4, 6, 8, 10]
let d: Set = [1, 7, 5, 9, 3]

//정렬을 신경쓰지 않고 인자값만 비교
a == b
a != b
b == d
//순서가 없기때문에 매번 값이 달라짐
b.elementsEqual(d)
//비교는 배열이 좋음
//set은 집합비교에 특화
a.isSubset(of: a)//부분 집합
a.isStrictSubset(of: a)//진부분집합

b.isSubset(of: a)//부분 집합
b.isStrictSubset(of: a)//진부분집합\

a.isSuperset(of: a)// 상위집합
a.isStrictSuperset(of: a)//진 상위집합

a.isDisjoint(with: b)//교집합 두집합이 교집합이면 false리턴


/*:
 # Combining Sets
 */

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]

//합집합, union의 경우에는 기존에있던 값을 리턴하는게 아니라 새로운 set을 리턴
var result = b.union(c)
//합집합이면서 기존의 set을 변경
b.formUnion(c)
b

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]
//교집합
result = a.intersection(b)
result = c.intersection(b)//없으면 빈set

a.formIntersection(b)
a

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]
//여집합
result = a.symmetricDifference(b)

a.formSymmetricDifference(b)

a = [1, 2, 3, 4, 5, 6, 7, 8, 9]
b = [1, 3, 5, 7, 9]
c = [2, 4, 6, 8, 10]
//차집합
result = a.subtracting(b)
//차집합은 조금 다르게 원본을 변경하고 싶으면 subtract를 쓴다.
a.subtract(b)


