protocol Animal {
    func sounds() -> String
}

struct Cat: Animal {
    var name: String

    init(name: String) {
        self.name = name
    }

    func sounds() -> String {
        return "Meow"
    }
}

func call(a : Animal) {
    println(a.sounds())
}

func main() {
    var cat = Cat(name: "NyanCat")
    call(cat)
}

main()
