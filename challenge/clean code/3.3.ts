function isEven(n: number): boolean {
  return n % 2 === 0;
}

function doubleNumber(n: number): number {
  return n * 2;
}

export function doubleEvenNumbers(numbers: number[]): number[] {
  return numbers.filter(isEven).map(doubleNumber);
}
