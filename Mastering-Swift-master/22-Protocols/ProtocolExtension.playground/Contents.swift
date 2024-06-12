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
 # Protocol Extension
 */

protocol Figure {
    var name: String { get }
    func draw()
}

//extension Figure{
//    func draw(){
//        print("draw figre")
//    }
//}
extension Figure where Self: Equatable{
    //여기서 self는 protocol를 채용한 형식
    //where절을 추가하여Equatable의 protocol도 체크하면
    //Reactangle에서 draw를 선언하지 않는다면 extension도 where절때문에
    //추가되지 않기 때문에 Figure protocol의 요구사항에 미치치 못함으로 오류가 나타난다.
    func draw(){
        print("draw figre")
    }
}
//struct Reactangle: Figure{
//    var name = ""
//    //draw를 선언하지 않았지만 extension으로 draw를 확장시켜서 오류가 생기지 않음
//
//    //만약 여기에서 draw를 재정의 한다면
//    func draw() {
//        print("draw rectangle")
//    }
//    //이부분이 충돌없이 채용된다.
//}
struct Reactangle: Figure, Equatable{
    var name = ""
    
}

let r = Reactangle()
r.draw()//draw figre

