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
 # Adding Elements
 */
var alphabet = ["A", "B", "C"]

//값을 하나만 추가하고 싶을 때
alphabet.append("E")
//값을 여러개 추가하고 싶을 때 배열로 표현
alphabet.append(contentsOf: ["E", "F"])
//값을 중간에 추가하기
alphabet.insert("D", at: 3)
//값을 중간에 여러개 추가하기
alphabet.insert(contentsOf:["a", "b", "c"], at:0)
//배열의 값을 변경하기
alphabet[0...2] = ["x", "y", "z"]
alphabet
alphabet.replaceSubrange(0...2, with: ["a", "b", "c"])
alphabet
//배열의 값을 교체할 때 꼭 인덱스와 변경할 값이 똑같을 필요가 없다.
alphabet[0...2] = ["z"]
alphabet
//원하는 값을 삭제하고 싶을 때
alphabet[0...2] = []
alphabet

/*:
 # Removing Elements
 */

alphabet = ["A", "B", "C", "D", "E", "F", "G"]

//index로 값을 삭제
alphabet.remove(at: 2)
alphabet
//첫 인자 삭제
alphabet.removeFirst()
alphabet
//처음에 있는 elem을 다수 삭제하기
alphabet.removeFirst(2)
alphabet
//뒤에서 부터 삭제하는 removelast도 존재
alphabet.removeLast()
alphabet
//모든 elem삭제
alphabet.removeAll()

//마지막 요소를 삭제하고 삭제된 요소를 반환 없으면 nil을 반환해준다.
alphabet.popLast()

alphabet = ["A", "B", "C", "D", "E", "F", "G"]
alphabet.popLast()
alphabet

//범위로 삭제하기
alphabet.removeSubrange(0..<2)
alphabet[0...2] = []
alphabet


