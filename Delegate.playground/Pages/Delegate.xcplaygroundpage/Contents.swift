protocol SendName {
    func sendName(name: String?)
}

class FirstClass {
    var delegate: SendName?
}

class SecondClass {
    var name: String?
}

extension SecondClass: SendName {
    func sendName(name: String?) {
        self.name = name
    }
}

let first = FirstClass()
let second = SecondClass()

first.delegate = second
first.delegate?.sendName(name: "Rakhman")
second.name
