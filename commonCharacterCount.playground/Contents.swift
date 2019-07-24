//: Playground - noun: a place where people can play

import UIKit

var str = "aaabbbbcc", str1 = "aabbbcccc"
var a = 0, x = Array(str.utf8), y = Array(str1.utf8)
for i in 0..<x.count{
    if let p = y.index(of: x[i]){
        a += 1
        y.remove(at: p)
    }
}
print(y)
print(a)







