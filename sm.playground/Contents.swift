import UIKit

func square(n: Int) -> Int {
    return n * n
}

func squareOfSums(n: Int, m: Int) -> Int {
    return square(n: n + m)
}

func main() {
    let a = 5
    let b = 4
    squareOfSums(n: a, m: b)
}

struct A {
    var id = 0
}

class B {
    var array = [A(), A(), A(), A(), A()] {
        didSet {
            print("didset called on array")
        }
    }
}

let b = B()
b.array[1] = A(id: 2)
b.array[1].id = 3


struct Branch {
    var director: Director
}

struct Director {
    let name: String
    var phone: String
    var branches: [Branch]
}


protocol P1 {}
struct S1 {}

extension P1 {
    func asd() {
        print("protocol extension")
    }
}

extension S1: P1 {
    func asd() {
        print("instance implementation")
    }
}

let s = S1()
let p: P1 = S1()

s.asd()
p.asd()

class Rahmet {
    func cashbackMain() {}
}

extension Rahmet {
    func cashbackExtension() {
        print("qwe")
    }
}

class Rahmet1: Rahmet {
    override func cashbackExtension() {
        print("asdasd")
    }
}

let r = Rahmet()
let r1 = Rahmet1()

r.cashbackExtension()
r1.cashbackExtension()

protocol Rahmet {}

extension Rahmet {
    func cashback() {
        print("asd")
    }
}

class RahmetImpl: Rahmet {
    func cashback() {
        print("qwe")
    }
}

extension RahmetImpl {
}

let r = RahmetImpl()
let r1: Rahmet = RahmetImpl()

r.cashback() //qwe
r1.cashback() //asd

class RahmetImpl1: RahmetImpl {
    override func cashback() {
        print("qwe1")
    }
}

let r2 = RahmetImpl1()
r2.cashback() //qwe1

protocol A {
    func call()
    func call1()
}

extension A {
    func call() {
        print("A calling")
    }

    func call1() {
        call()
    }
}

class B: A {
    func call() {
        print("C calling")
    }
}

class C: B {
    override func call() {
        print("C calling")
    }
}

let c = C()
c.call1() // A calling, not C calling :D

class D: A {
    func call1() {
        print("D calling")
    }
}

let d: A = D()
d.call1() // D calling


class Button: UIButton {}

@objc protocol Colorable {
    func color()
}

extension Colorable {

}

extension UIButton: Colorable {
    func color() {
        print("uibutton color")
    }
}

extension Button {
    override func color() {
        print("button color")
    }
}

let button = Button(frame: .zero)
button.color()

