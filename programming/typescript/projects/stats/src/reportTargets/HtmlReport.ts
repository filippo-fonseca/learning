import fs from "fs";
import { OutPutTarget } from "../Summary";

export class HtmlReport implements OutPutTarget {
  print(report: string): void {
    const html = `
        <div>
        <h1>Analysis Output</h1>
        <div>${report}</div>>
        </div>
        `;

    fs.writeFileSync("report.html", html);
  }
}
