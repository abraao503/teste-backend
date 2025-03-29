type Operation = "add" | "subtract" | "multiply" | "divide";

export function calculate(operation: Operation, a: number, b: number): Number {
  if (isNaN(a)) {
    throw new Error("Invalid first number");
  }

  if (isNaN(b)) {
    throw new Error("Invalid second number");
  }

  switch (operation) {
    case "add":
      return a + b;
    case "subtract":
      return a - b;
    case "multiply":
      return a * b;
    case "divide":
      if (b === 0) {
        throw new Error("Division by zero");
      }
      return a / b;
    default:
      throw new Error("Invalid operation");
  }
}
