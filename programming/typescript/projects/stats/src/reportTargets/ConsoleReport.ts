import { OutPutTarget } from "../Summary";

export class ConsoleReport implements OutPutTarget {
  print(report: string): void {
    console.log(report);
  }
}
