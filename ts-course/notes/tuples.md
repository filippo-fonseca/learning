# Section 6 - Tuples in TypeScript

## 33. Tuples in TypeScript

**Tuple**: Array-like structure where each element represents some property of a record

**Example:**

Object representing a 'drink':

```ts
color: brown,
carbonated: true,
sugar: 40
```

Let's try representing this object in an array:

```ts
[brown, true, 40];
```

In array, we lose some information, such as what the actual elements of the array represent.

With a tuple, we have what looks like an array but with the property valiues put in a very specific order.

## 34. Tuples In Action

```ts
const pepsi: [string, boolean, number] = ["brown", true, 40];
```

Here, we are defining a tuple named `pepsi`. Instead of just being a normal array, we make it a tuple by adding in the type annotations.

We can also define a type alias`in our application so we don't have to manually re-write what`Drink` should look like, as such:

```ts
type Drink = [string, boolean, number];

const pepsi: Drink = ["brown", true, 40];
```

## 35. Why Tuples?

If you're ever working with a CSV file and want to extract a certain row, you can use tuples, for example.s

Example of when tuples might not be the best option:

```ts
const carSpecs: [number, number] = [400, 3354];

const carStats = {
  horsepower: 400,
  weight: 3354,
};
```

In `carSpecs`, we don't intuitevely know what each of the values of the tuple actually mean. In `carStats`, however, we can clearly define what each value in the object means and represents.
