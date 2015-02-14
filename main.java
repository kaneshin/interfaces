import static java.lang.System.out;

interface Animal {
    public String sounds();
}

class Cat implements Animal {
    String name;

    public Cat(String name) {
        this.name = name;
    }

    public String sounds() {
        return "Meow";
    }
}

class Main {
    public static void call(Animal a) {
        System.out.println(a.sounds());
    }

    public static void main(String[] args) {
        Cat cat = new Cat("NyanCat");
        call(cat);
    }
}
