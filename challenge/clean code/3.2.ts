function calculatePremiumDiscount(price: number): number {
  if (price > 100) {
    return price * 0.8;
  }

  return price * 0.9;
}

function calculateRegularDiscount(price: number): number {
  if (price > 100) {
    return price * 0.9;
  }

  return price;
}

export function calculateDiscount(price: number, isPremium: boolean): number {
  if (isPremium) {
    return calculatePremiumDiscount(price);
  }

  return calculateRegularDiscount(price);
}
