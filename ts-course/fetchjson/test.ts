import * as Mathium from "mathiumjs";

function findPerfSquare(term1, operation, term2) {
  let formula = Mathium.perfectSquare(term1, operation, term2);
  return formula;
}

console.log(findPerfSquare(7, "+", 9));
