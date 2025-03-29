type Item = {
  name: string;
  price: number;
};

function isItemExpensive(item: Item): boolean {
  return item.price > 100;
}

function filterExpensiveItems(items: Item[]): Item[] {
  return items.filter(isItemExpensive);
}

function logExpensiveItems(items: Item[]): void {
  items.forEach((item) => {
    console.log(item.name + " is expensive");
  });
}

export function processItems(items: Item[]): void {
  const expensiveItems = filterExpensiveItems(items);
  logExpensiveItems(expensiveItems);
}
