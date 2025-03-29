function isEven(n: number): boolean {
  return n % 2 === 0;
}

function duplicateNumber(n: number): number {
  return n * 2;
}

export function duplicateEvenNumbers(numbers: number[]): number[] {
  return numbers.filter(isEven).map(duplicateNumber);
}
