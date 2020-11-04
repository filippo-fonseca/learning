# Section 7: The All-Important Interface

## 36. Interfaces

`Interfaces` + `Classes` = How we get really strong code reuse in TS

**Interfaces**: Creates a new type, descriving the property names and value types of an object

## 37. Long Type Annotations

Instead of writing out long type annotations, as such:

```ts
const oldCivic = {
  name: "civic",
  year: 2000,
  broken: true,
};

const printVehicle = (vehicle: {
  name: string;
  year: number;
  broken: boolean;
}): void => {
  console.log(`Name: ${vehicle.name}`);
  console.log(`Year: ${vehicle.year}`);
  console.log(`Broken? ${vehicle.broken}`);
};

printVehicle(oldCivic);
```

Instead, we can use an `interface` to simplify this process.

## 38. Fixing Long Annotations With Interfaces

When using an `interface`, the code from above takes on the following form:

```ts
interface Vehicle {
  name: string;
  year: number;
  broken: boolean;
}

const oldCivic = {
  name: "civic",
  year: 2000,
  broken: true,
};

const printVehicle = (vehicle: Vehicle): void => {
  console.log(`Name: ${vehicle.name}`);
  console.log(`Year: ${vehicle.year}`);
  console.log(`Broken? ${vehicle.broken}`);
};

printVehicle(oldCivic);
```

## 39. Syntax Around Interfaces

When using interfaces, we are not limited just to permanent values, as such:

```ts
interface Vehicle {
  name: string;
  year: Date;
  broken: boolean;
  summary(): string;
}

const oldCivic = {
  name: "civic",
  year: new Date(),
  broken: true,
  summary(): string {
    return `Name: ${this.name}`;
  },
};
const printVehicle = (vehicle: Vehicle): void => {
  console.log(vehicle.summary());
};

printVehicle(oldCivic);
```

## 40. Functions in Interfaces

- We can dramatically simplify

## 41. Code Reuse with Interfaces

When using interfaces, we can use them multiple times throughout our code to simplify it, as such:

```ts
const drink = {
  color: "brown",
  carbonated: true,
  sugar: 40,
  summary(): string {
    return `My drink has ${this.sugar} grams of sugar.`;
  },
};
```

**CODE DECONSTRUCTION**:

- Here, we are declaring an object called `drink` that has a few properties.
- The only one that we really care about is the `summary()` property. We are reusing it from the `Reportable` interface defined previously, which means that `drink` is also of type `Reportable`.
- This means that we can also log `printSummary` with `drink` passed in as its parameter, as such:

```ts
const printSummary = (item: Reportable): void => {
  console.log(item.summary());
};

printSummary(oldCivic);
printSummary(drink);
```

## 42. General Plan with Interfaces

- Reportable is a gatekeeper to `printSummary`
- `oldCivic` and `drink` must satisfy the 'Reportable' interface to work with 'printSummary`.

**General Strategy for Reusable Code in TS**:

- Create functions that accept arguments that are typed with interfaces
- Objects.classes can decide to 'implement' a given interface to work with a function

## Quiz 2: Interfaces

1. **Q:** The goal of an interface is to:
   **A:**: : Define a new type.

2. **Q:** Take a look at the following code. What will TypeScript do to decide if `coffeeCup` is of type `Cup`?

```ts
interface Cup {
  volume: number;
  height: number;
}

const coffeeCup = {
  volume: 300,
  height: 20,
};
```

**A:** TypeScript will iterate through all the properties of the interface and make sure `coffeeCup` has the same properties with the same type.

3. **Q:** Does the `pineTree` object successfully implement the `Tree` instance?

```ts
interface Tree {
  height: number;
  name: string;
}

const pineTree = {
  height: 1200,
  name: "pine",
};
```

**A:** Yes

4. **Q:** Does the `washDishes` object implement the `Todo` interface?

```ts
interface Todo {
  id: number;
  name: string;
  completed: boolean;
}

const washDishes = {
  id: "AB20-49CD-11EA-4F2F",
  name: "Do the dishes",
  completed: false,
};
```

**A:** No, because the `Todo` interafce expects `id` to be a `number`, but `washDishes` provided a `string`.

5. **Q:** Does `washDishes` implement both the `Todo` and `Model` interfaces?

```ts
interface Todo {
  id: number;
  name: string;
  completed: boolean;
}

interface Model {
  id: number;
}

const washDishes = {
  id: 20,
  name: "Do the dishes",
  completed: false,
};
```

**A:** Yes, because `washDishes` has all the same property names and types of `Todo` and `Model`
