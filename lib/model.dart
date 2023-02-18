class Expence {
  int id;
  String category;
  String note;
  String price;
  String date;
  bool spendStatus;

  Expence(
      {required this.id,
      required this.category,
      required this.note,
      required this.date,
      required this.price,
      this.spendStatus = false});
}
