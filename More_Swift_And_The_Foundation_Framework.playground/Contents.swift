//: Playground - noun: a place where people can play

import UIKit

// Optional is just an enum
/*
     enum Optional<T> { // the <T> is a generic like as in Array<T>
         case none
         case some(T)
     }
 */

let x: String? = nil // 等价于
let x1 = Optional<String>.none

let x2: String? = "hello" // 等价于
let x3 = Optional<String>.some("hello")

let y = x2! // 等价于
let y2: String?
switch x2 {
case .some(let value): y2  = value
case .none:
    // raise an exception
    break
}

// 可选链
var display: UILabel?
if let temp1 = display {
    if let temp2 = temp1.text {
        let z = temp2.hashValue
        print(z)
        // ...
    }
}

// ... with Optional chaining using ? instead of ! to unwrap, this becoms ...
if let z = display?.text?.hashValue { // x is an Int
    //
    print(z)
}

let z1 = display?.text?.hashValue // x1 is an Int?

// There is also an Optional "defaulting" operator ??

let s: String? = "str" // might be nil
if s != nil {
    display?.text = s
} else {
    display?.text = " "
}

// 以上等价于：
display?.text = s ?? " "

// Tuples 元组
let tup: (String, Int, Double) = ("hello", 5, 0.85)
let (word, name, value) = tup
print(word)
print(name)
print(value)

// 给元组中的元素命名，强烈推荐的做法
let tup2: (w: String, i: Int, v: Double) = ("hello", 5, 0.85)
print(tup2.w)
print(tup2.i)
print(tup2.v)

// Range
let array = ["a", "b", "c", "d"]
let a = array[2...3]
print(a)

let b = array[2..<3]
print(b)

// for in
// 遍历
for i in 0..<20 {
    
}

// for (i = 0.5; i <= 15.25; i += 0.3)
// 像以上这种， 0.5到15.25，是一个 range， 但是不是一个 CountableRange
// 我们可以使用一个全局的函数来处理， 创建一个 countableRange
for i in stride(from: 0.5, through: 15.25, by: 0.3) {
    
    print("123")
}

var storedProperty: Int = 42 {
    willSet {
        print(newValue)
    }
    didSet {
        print(oldValue)
    }
}

storedProperty = 12


























