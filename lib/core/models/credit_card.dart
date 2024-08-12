class CreditCardModel {
  final String type;
  final int number;
  final int balance;

  const CreditCardModel({
    required this.type,
    required this.number,
    required this.balance,
  });
}

const cards = [
  CreditCardModel(
    type: "Visa",
    number: 134598653546,
    balance: 200,
  ),
  CreditCardModel(
    type: "Mastercard",
    number: 673672348828,
    balance: 1200,
  ),
  CreditCardModel(
    type: "Visa",
    number: 36478756387645,
    balance: 2000,
  ),
];
