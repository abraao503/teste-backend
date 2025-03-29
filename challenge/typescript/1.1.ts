export function extractValues<T, K extends keyof T>(
  data: Array<T>,
  key: K
): Array<T[K]> {
  return data.map((item) => item[key]);
}
