# ⌨️ Section 2: Type System

## 10. Types

- Every value in TS has a type

**Type System:** Simple way of referring to the `properties` and `functions` a value has

NOTE: Everything in TypeScript has a value.

**EXAMPLE:**

```ts
let a = "red";
```

The type of the value `"red"` is a string. We can evern go more in depth and say:

"`'red'` is a value hat has properties and methods that we asume that a string has."

**"{A} type is basically a shortcut to describe the different properties and methods that a single value has."** - Stephen Grider

### Examples of Types

| Type    | Example                                    |
| ------- | ------------------------------------------ |
| string  | "hello"                                    |
| number  | 8                                          |
| boolean | true                                       |
| Date    | new Date()                                 |
| Todo    | {id: 1, completed: false, title: "Todo 1"} |

- The type `Todo` is a type defined previously in an interface, as such:

```ts
interface Todo {
  id: number;
  title: string;
  completed: boolean;
}
```

## 11. More on Types

- A number is a number (regardless if it contains a decimal, negative sign, etc.). There is no `int` or `float` in TS, only `numbers`.

### Primitive & Object Types

- In TS, there are two main "types" of types

| Primitive Types | Object Types |
| --------------- | ------------ |
| number          | functions    |
| boolean         | arrays       |
| void            | classes      |
| undefined       | objects      |
| string          |              |
| symbol          |              |
| null            |              |

### Why do we care about types?

- Types are used by the TypeScript compiler to analyze our code for errors

- Makes it easier for other engineers to understand what values are flowing around the codebase

## 12. Examples of Types

- Refer to `types.ts` in the `features` folder

Whenever you create an object and don't specify a type with an intefrace, **the type will default to be the whole object.**

_Here are some examples of types in action:_

**Example 1:**

```ts
const today = new Date();
today.getDate();
```

In this scenerio, the variable `today` has a type of `Date()`. This means that it has access to all of the properties and methods that `Date()` has. You can see this when dot notation is used to `getDate()`.

**Example 2:**

```ts
const person = {
  age: 20,
};

person.age;
```

In this scenerio, the variable `person` has a type of `object`. This means that it has access to all of the properties and methods that the object has `(like age)`. You can see this when dot notation is used (`person.age;`).

**Example 3:**

```ts
class Color {}

const red = new Color();
```

In this scenerio, the variable `red` has a type of `Color()`. This means that it has access to all of the properties and methods that `Color()`.

---

## 13. Where Do We Use Types?

- EVERYWHERE!

## Quiz 1

### What is a type?

- A shortcut to refer to the different properties and functions that a value has

### In TypeScript, what has a type?

- Any value

### Why do we care about types?

- They give the TypeScript compiler information to analyze our code for errors
