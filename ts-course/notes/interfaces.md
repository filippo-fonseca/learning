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
