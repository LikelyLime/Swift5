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
import Foundation

/*:
 # defer Statements
 ![defer](defer.png)
 */
func proccessFile(path: String){
    print("1")
    let file = FileHandle(forReadingAtPath: path)
    //에러로 강제종료가 되는 경우를 제외하면 함수가 종료될때 defer실행
    defer{
        print("2")
        file?.closeFile()
    }
    
    if path.hasSuffix(".jpg"){
        print("3")
        return
    }
    
    defer{
        print("5")
    }
    
        print("4")
    
}

proccessFile(path: "file.swift")
//1 -> 4 -> 5 -> 2
proccessFile(path: "file.jpg")
//1 -> 3 -> 2
//defer문이 실행되어야 5가 출력
//그렇기 때문에 항상 defer문의 경우에는 스코프 시작시 선언


func testDefer(){
    defer{
        print(1)
    }
    defer{
        print(2)
    }
    defer{
        print(3)
    }
}

testDefer()
//defer문이 실행될때마다 예약을 하는데 그렇기 때문에 defer를 선언한 역순으로 출력
//주로 하나만 쓰는 것을 권장















