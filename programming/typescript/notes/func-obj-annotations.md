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

## 24 - Inference Around Functions

- TS only cares about types, not the specific logic:

```ts
const add = (a: number, b: number): number => {
  return a - b;
};
```

**CODE DECONSTRUCTION:** Here, even though we are subtracting `b` from `a`, the code will still run without errors, as TS only cares that we are returning the correct type (`number`), and doesn't care that the function is called `add` and we are subtracting.

The function `add` comprises of:

1. Arguments: `a: number` and `b: number`

- You must always provide type annotations for arguments in a function

2. Output: number

- Type inference works out output, but we won't use it
- If we remove the output type annotation, TS will use type inference
- It's common practice to use type annotation anyways

## 25. Annotations for Anonymous Functions

Type annotations for anonymous function is nearly idenntical to what we were looking at earlier, as such:

```ts
function divide(a: number, b: number): number {
  return a / b;
}
```

For anonymous functions assigned to variables, we also follow the same process for type annotations:

```ts
const multiply = function (a: number, b: number): number {
  return a * b;
};
```

## 26. Void and Never

- We only annotate a function with "never" when we don't expect a function to return anything ever, such as:

```ts
const logger = (message: string): void => {
  console.log(message);
};
```

- If we at any point want to return something, we'd actually specify the type of the return and not just leave it at void

## 27. Destructuring with Annotations

Instead of referring to `forecast` and logging `forecast.date` and `forecast`weather` to the console, as such...

```ts
const todaysWeather = {
  date: new Date(),
  weather: "sunny",
};

const logWeather = (forecast: { date: Date; weather: string }): void => {
  console.log(forecast.date);
  console.log(forecast.weather);
};

logWeather(todaysWeather);
```

...we can simply replace it with an object:

```ts
const todaysWeather = {
  date: new Date(),
  weather: "sunny",
};

const logWeather = ({
  date,
  weather,
}: {
  date: Date;
  weather: string;
}): void => {
  console.log(date);
  console.log(weather);
};

logWeather(todaysWeather);
```

## Annotations Around Objects

```ts
const profile = {
  name: "alex",
  age: 20,
  coords: {
    lat: 0,
    lng: 15,
  },
  setAge(age: number): void {
    this.age = age;
  },
};

const { age }: { age: number } = profile;
const {
  coords: { lat, lng },
}: { coords: { lat: number; lng: number } } = profile;
```
