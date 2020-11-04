# Section 8: Building Functionality with Classes

## 43. Classes

**Definition:** Blueprint to create an object with some fields (values) and methods (functions) to represent a 'thing'

**Example of a class and instances:**

```ts
class Vehicle {
  drive(): void {
    console.log("chugga chugga");
  }

  honk(): void {
    console.log("beep");
  }
}

const vehicle = new Vehicle();
vehicle.drive();
vehicle.honk();
```

**CODE DECONSTRUCTION:**

- We are declaring a `class` named `Vehicle` (class names are usually capitalized)
- The `class` has two methods (functions), inside of it: `drive()` and `honk()`
- Below, we are creating an instance of the `Vehicle` class with `const vehicle = new Vehicle()`
- We can now use the different properties inside of the `Vehicle` class with the `vehicle` instance, such as `vehicle.drive()` and `vehicle.honk()`

## 44. Basic Inheritance

- We can create child classes of the parent, or super class, as such:

```ts
class Vehicle {
  drive(): void {
    console.log("chugga chugga");
  }

  honk(): void {
    console.log("beep");
  }
}

class Car extends Vehicle {
  drive(): void {
    console.log("vroom");
  }
}

const car = new Car();
car.drive();
car.honk();
```

**CODE DECONSTRUCTION:**

- We are creating a new class called `Car` that `extends` class `Vehicle`
- This means that we can now use all of the methods (functions) inside of `Vehicle` in its child class
- We can also overrie any existing method in `Vehicle` inside of the child class `Car` by simply rewriting it

## 45. Instance Method Modifiers

**Public:** This method can be called anywhere, any time

**Private:** This method can only be called by other methods in this class
**Protected:** This method can be called by other methods in this class, or by other methods in child classes

**Example of `public` and `private`:**

```ts
class Vehicle {
  public honk(): void {
    console.log("beep");
  }
}

class Car extends Vehicle {
  private drive(): void {
    console.log("vroom");
  }

  startDrivingProcess(): void {
    this.drive();
  }
}

const car = new Car();
car.startDrivingProcess();
car.honk();
```

**Example of `protected`:**

```ts
class Vehicle {
  protected honk(): void {
    console.log("beep");
  }
}

const vehicle = new Vehicle();
vehicle.honk();

class Car extends Vehicle {
  private drive(): void {
    console.log("vroom");
  }

  startDrivingProcess(): void {
    this.drive();
    this.honk();
  }
}

const car = new Car();
car.startDrivingProcess();
car.honk();
```

## 46. Fields in Classes

We can declare fields (input values) by using the `constructor()` method, as such:

```ts
class Vehicle {
  constructor(public color: string) {}
  protected honk(): void {
    console.log("beep");
  }
}

const vehicle = new Vehicle("orange");
console.log(vehicle.color);
```

## 47. Fields with Inheritance

- Whenever we call the `constructor()` of the child class we are required to call the `constructor()` method of the parent `class` as well
- This is done with the `super()` method, as well as adding the property to the argument list of the child class, as such:

```ts
class Vehicle {
  constructor(public color: string) {}
  protected honk(): void {
    console.log("beep");
  }
}

const vehicle = new Vehicle("orange");
console.log(vehicle.color);

class Car extends Vehicle {
  constructor(public wheels: number, color: string) {
    super(color);
  }
  private drive(): void {
    console.log("vroom");
  }

  startDrivingProcess(): void {
    this.drive();
    this.honk();
  }
}

const car = new Car(4, "red");
car.startDrivingProcess();
```

## 48. Where to Use Classes

- Interfaces + Classes = How we get really strong code reuse in TS
