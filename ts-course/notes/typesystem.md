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

**Type is basically a shortcut to describe the different properties and methods that a single value has.** - Stephen Grider

## Examples of Types

| Type    | Example                                    |
| ------- | ------------------------------------------ |
| string  | "hello"                                    |
| number  | 8                                          |
| boolean | true                                       |
| Todo    | {id: 1, completed: false, title: "Todo 1"} |

- The type `Todo` is a type defined previously in an interface, as such:

```ts
interface Todo {
  id: number;
  title: string;
  completed: boolean;
}
```
