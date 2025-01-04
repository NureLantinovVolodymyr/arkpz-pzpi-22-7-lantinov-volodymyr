// Change Bidirectional Association to Unidirectional

class A {
  constructor() {
    this.b = new B(this);
  }
}

class B {
  constructor(a) {
    this.a = a;
  }
}

class A {
  constructor() {
    this.b = new B();
  }
}

class B {
  constructor() {
    // Виключено посилання на A
  }
}

// Change Unidirectional Association to Bidirectional
class A {
  constructor() {
    this.b = new B();
  }
}

class B {
  constructor() {
    // Не має посилання на A
  }
}

class A {
  constructor() {
    this.b = new B(this);
  }
}

class B {
  constructor(a) {
    this.a = a;
  }
}

// Collapse Hierarchy
class Animal {
  makeSound() {
    console.log("Animal sound");
  }
}

class Dog extends Animal {
  makeSound() {
    console.log("Bark");
  }
}

class Cat extends Animal {
  makeSound() {
    console.log("Meow");
  }
}

class Animal {
  makeSound(type) {
    if (type === "dog") {
      console.log("Bark");
    } else if (type === "cat") {
      console.log("Meow");
    } else {
      console.log("Animal sound");
    }
  }
}
