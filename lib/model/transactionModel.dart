class TransactionModel {
  TransactionModel({
    required this.id,
    required this.title,
    required this.description,
    required this.amount,
    // required this.salary,
    required this.isIncome,
    required this.category,
    required this.dateTime,
  });

  final int? id;
  final String? title;
  final String? description;
  final String? amount;
  // final int? salary;
  final int? isIncome;
  final String? category;
  final String? dateTime;

  factory TransactionModel.fromMap(Map<String, dynamic> json) =>
      TransactionModel(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        amount: json["amount"],
        // salary: json["Salary"],
        isIncome: json["isIncome"],
        category: json["category"],
        dateTime: json["dateTime"],
      );

  Map<String, dynamic> transactionToMap() => {
        "id": id,
        "title": title,
        "description": description,
        "amount": amount,
        // "Salary": salary,
        "isIncome": isIncome,
        "category": category,
        "dateTime": dateTime,
      };
}
