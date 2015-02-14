package main

import "fmt"

type Animal interface {
	sounds() string
}

type Cat struct {
	Animal
	Name string
}

func (c Cat) sounds() string {
	return "Meow"
}

func call(a Animal) {
	fmt.Println(a.sounds())
}

func main() {
	cat := Cat{Name: "NyanCat"}
	call(cat)
}
