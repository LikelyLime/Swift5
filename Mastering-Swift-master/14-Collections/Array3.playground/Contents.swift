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
import os
import Foundation

/*:
 # Comparing Arrays
 */

let a = ["A", "B", "C"]
let b = ["a", "b", "c"]

a == b
a != b
a.elementsEqual(b)
a.elementsEqual(b){ (lhs, rhs ) -> Bool in
    return lhs.caseInsensitiveCompare(rhs) == .orderedSame
}











/*:
 # Finding Elements
 */
let nums = [1, 2, 3, 1, 4, 5, 2, 6, 7, 5, 0]

nums.contains(1)
nums.contains(8)

nums.contains{ (n) -> Bool in
    return n % 2 == 0
}
//조건에 맞는 첫번째 값을 반환해주는 메서드
nums.first { (n) in
    return n % 2 == 0
}
//조건에 맞는 첫번째 index를 반환해주는 메서드
nums.firstIndex { (n) in
    return n % 2 == 0
}
//elem를 검색 후 첫번째 인덱스를 반환
nums.firstIndex(of: 1)
//elem를 검색 후 마지막 인덱스를 반환
nums.lastIndex(of: 1)



/*:
 # Sorting on Array
 */
nums.sorted()
nums

nums.sorted { (a, b) -> Bool in
    return a > b
}

nums.sorted().reversed()
//reversed의 경우에는 새로운 배열을 리턴해주지 않고 메모리를 공유한다.
//만약 새로운 배열을 리턴받고 싶다면 배열 생성자로 전환
[Int](nums.sorted().reversed())

//가변배열
var mutableNums = nums

mutableNums.sort()
mutableNums.reverse()
//인덱스 위치 변환하기
mutableNums
mutableNums.swapAt(0, 1)

//배열안의 elem를 랜덤으로 위치시킨다.
mutableNums.shuffle()















