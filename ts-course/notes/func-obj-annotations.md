# Section 4: Annotations With Functions and Objects

## 23 - More on Annotations Around Functions

Type Annotations for Functions - Tell TS wat type of arguments the function will recieve and return

Type Inference for Functions - TS tries to figure out what type of value a function will **return**.

**EXAMPLE**:

```ts
const add = (a: number, b: number): number => {
  return a + b;
};
```

**CODE DECONSTRUCTION:**

- We are declaring a variable using `const` called `add`
- We are giving the variable two parameters: `a` and `b`
- We are assigning the type `number` to both `a` and `b`
- With `: number`, we are telling TS that the return value of the function will be a number
