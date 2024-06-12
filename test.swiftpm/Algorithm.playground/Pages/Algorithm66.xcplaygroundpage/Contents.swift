

import Foundation
func solution(_ keymap:[String], _ targets:[String]) -> [Int] {
    var wordAry: [String] = []
    var result: [Int] = []
    for i in targets{
        print( i.map{String($0)} )
        wordAry = i.map{String($0)}
        result.append(test(keymap, wordAry))
    }
    if result.reduce(0, +) == 0 {
        result.removeAll()
        result.append(-1)
    }
    return result
}

//각 번호를 구하는 함수
func test(_ keymap:[String],_ wordAry:[String]) -> Int{
    var index: [Int] = []
    var result: [Int] = []
    for i in wordAry{
        
        for j in keymap{

            if let charIndex = j.firstIndex( of: Character(i) ) {
                index.append( j.distance(from: j.startIndex, to: charIndex) + 1 )
            }else{
                index.append(0)
            }
            if index.count == keymap.count{
                index.sort()
                if index.reduce(0, +) != 0 {
                    result.append( index[0] == 0 ? index[1] : index[0] )
                }
                index.removeAll()
            }

        }
        
    }
    
    return result.reduce(0, +)
}

print( solution(["AA"], ["B"]) )
print( test(["ABACD", "BCEFD"], ["A", "B", "C", "D"]) )
print( solution(["AGZ", "BSSS"], ["ASA","BGZ"]    ) )
print( solution1(["ABACD", "BCEFD"]  ,  ["ABCD","AABB"] ) )


func solution1(_ keymap:[String], _ targets:[String]) -> [Int] {
    var dict = [String: Int]()
    var keymap = keymap.map{$0.map{String($0)}}
    print(keymap)
    var result = [Int]()
    for k in keymap{
        for i in k{
            if dict[i] == nil {
                dict[i] = k.firstIndex(of: i)!
            }else{
                dict[i] = min(dict[i]!, k.firstIndex(of: i)!)
            }
        }
    }
    for target in targets {
        var sum = 0
        for t in target.map({String($0)}) {
            if dict[t] == nil {
                sum = -1
                break
            }else{
                sum += dict[t]!+1
            }
        }
        result.append(sum)
    }
    return result
}
