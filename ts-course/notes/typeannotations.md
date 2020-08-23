# 🔔 Section 3: Type Annotations

## 14. Type Annotations and Inference

### Definitions

**Type Annotations:** Code we add to tell TypeScript what type of value a variable will refer to (we devs tell TS the type)

**Type Inference:** TypeScript tries to figure out what type of value a variable refers to (TS guesses the type)

## 15. Annotations with Variables

- Refer to features/annotations/variables.ts

```ts
const apples: number = 5;
```

**CODE DECONSTRUCTION:**In the code snippet above, our type annotation is the `: number =` part of the variable declaration.

This tells TS that the variable `apples` will only ever have a value of a `number`.

Another example could be with built in objects (instance of a class):

```ts
// built in objects
let now: Date = new Date();
```

**CODE DECONSTRUCTION:**Here, we are defining a variable called `now` and we are telling TS that the variable is going to be of type `Date`. On the other side, we assign it an instance of a `Date` object.

## 16. Object Literal annotations

- Refer to features/annotations/variables.ts

Let's take a look at an example of defining a type annotation for an Array:

```ts
// Array
let colors: string[] = ["red", "green", "blue"];
```

**CODE DECONSTRUCTION:**In the variable declaration above, it's important to note that the annotation (`string[]`) doesn't actually create an array. It just tells TS that the string will contain the value of an array.

We can see the same thing happen with other types of values:

```ts
let myNumbers: number[] = [1, 2, 3];
let truths: boolean[] = [true, true, false];
```

With **classes**, type annotations look like this:

```ts
// Classes
class Car {}
let car: Car = new Car();
```

**CODE DECONSTRUCTION:**Here, we are defining a class named `Car` and declaring a variable named `car` that that takes in a type of `Car` and creates an instance of class `Car`.

With **objects**, type annotations would look like this:

```ts
// Object Literal
let point: { x: number; y: number } = {
  x: 10,
  y: 20,
};
```

**CODE DECONSTRUCTION:**Here, we are defining an object named `point` that has two values, `x` and `y`. In the type annotation, we are telling TypeScript that the values of `x` and `y` can only ever be numbers, as evidenced above.
