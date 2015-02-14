<?php

interface Animal {
	public function sounds();
}

class Cat implements Animal {
	public $name = "";

	public function __construct($name) {
		$this->name = $name;
	}

	public function sounds() {
		return "Meow";
	}
}

function call(Animal $a) {
	echo $a->sounds();
}

function main() {
	$cat = new Cat("NyanCat");
	call($cat);
}
main();

