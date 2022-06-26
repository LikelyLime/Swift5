import UIKit

var nk: Array<String> = []
var n: Int
var k: Int
nk = readLine()!.components(separatedBy: " ")
n = Int(nk[0])!
k = Int(nk[1])!

n = 7
k = 3

var list = ArraySlice<Int>(1...n)
var reult = ""
while(list.isEmpty == false){
    for i in 0..<k{
        if i + 1 == k{
            reult.append(String(list.first!) + ", ")
            list = list.dropFirst()
        }else{
            list.append(list.first!)
            list = list.dropFirst()
        }
    }
}
reult.removeLast()
reult.removeLast()
print("<" + reult + ">")
