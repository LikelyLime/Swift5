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
 # Adding Keys and Values
 */

var words = [String: String]()

words["A"] = "Apple"
words["B"] = "Banana"
words.count
words
//키가 없다면 새로운 값을 집어넣지만 키가 존재한다면 딕셔너리의 값이 덮어 씌워진다.
words["B"] = "Ball"
words.count
words
//같은 키값에 새로운 값을 업데이트 할때 키값이 없으면 insert 하고 nil반환 , 있으면 update하고 이전 value리턴
words.updateValue("City", forKey: "C")

words.updateValue("Circle", forKey: "C")
//이러한 기능을 upsert라 한다.









/*:
 # Removing Keys and Values
 */

//딕셔너리 삭제
words
words["B"] = nil
words
//존재하지 않은 값을 삭제할 때는 에러가 뜨지 않고 그 다음 동작을 진행한다.
words["Z"] = nil
//메서드를 이용하여 삭제하면 삭제된 value를 return한다.
words.removeValue(forKey: "A")
words.removeValue(forKey: "A")
//전체삭제는 removeAll
words.removeAll()






















