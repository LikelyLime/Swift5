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
//: [Previous](@previous)

import Foundation

/*:
 ## forEach
 */
print("Array", "foreach============")
let arr = [1, 2, 3]
arr.forEach { (num) in
    print(num)
}

print("set", "foreach============")

let set:Set = [1,2 ,3]
set.forEach { (num) in
    print(num)
}

print("dictionary", "foreach============")
let dict = ["A": 1, "B": 2, "C": 3]
dict.forEach { (elem) in
    print(elem.key, elem.value)
}

//두방식의 차이점
func withForIn(){
    print(#function)
    for num in arr{
        print(num)
        return
    }
}

func withForeach(){
    print(#function)
    let arr = [1, 2, 3]
    arr.forEach { (num) in
        print(num)
        return
    }
}

//withForIn의 경우에는 반복문이기 때문에 break나 continue를 사용할 수 있다.

withForeach()
withForIn()




