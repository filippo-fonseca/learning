# Section 5: Mastering Typed Arrays

## 29. Arrays in TypeScript

**Typed Arrays:** Arrays where each elementis some consistent type of value

Example:

```ts
const carMakers = ["ford", "toyota", "chevy"];
```

Here, TypeScript uses Type Inference to infer that the type of elements inside the `carMakers` array are going to be strings. This is instead of perhaps using type annotations, in which we could specify that the type of elements in the array are strings, as such:

```ts
const carMakers: string[] = ["ford", "toyota", "chevy"];
```

We're not limited to just basic objects inside of arrays. We can also use two-dimensional arrays, for example:

const carsByMake = [["f150"], ["corolla"], ["camaro"]];

## 30. Why Typed Arrays?

1. TS can do type inference when extracting values from an array

```ts
// Help with inference when extracting values
const car = carMakers[0];
const myCar = carMakers.pop();
```

TypeScript knows that `car` and `myCar` are going to be strings.

2. TS can prevent us from adding incompatible values to the array

```ts
// Prevent incompatible values
carMakers.push(100);
```

TypeScript detects that the `carMakers` array has a type of `string`, so it gives out an error when we try to push `100` into the array, which is of type `number`.

3. We can get help with 'map', 'forEach', and 'reduce' functions

```ts
// Help with 'map'
carMakers.map((car: string): string => {
  return car.toUpperCase();
});
```

When returning `car`, TypeScript gives us a large variety of autocomplete functionality because it knows that the return value will be a string.

4. Flexible - arrays can still contain multiple different types

- Check the next section

## Multiple Types in Arrays

By using the `|`, which acts as the `or` operator, we can assign multiple types to an array, as such:

```ts
// Flexible types
const importantDates: (Date | string)[] = [new Date()];
importantDates.push("2030-10-10");
importantDates.push(new Date());
```

## 32. When To Use Typed Arrays

- Anytime we need to represent a collection of records with some arbitrary sort of order
