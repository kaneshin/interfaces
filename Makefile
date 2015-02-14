all: go swift objc

go:
	go build -o go.o main.go && ./go.o

swift:
	swiftc -o swift.o main.swift && ./swift.o

objc:
	gcc -o objc.o main.m -framework Foundation && ./objc.o

java:
	javac main.java && java Main

php:
	php main.php

clean:
	rm -f *.o *.class
