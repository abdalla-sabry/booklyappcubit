class BookDateModel {
  final String? bookName;
  final String? imagePass;
  final String? writerName;
  final double? rate;
  final double? prise;
  final double? sallingNumber;

  BookDateModel(
      {required this.bookName,
      required this.imagePass,
      required this.writerName,
      required this.rate,
      required this.prise,
      required this.sallingNumber});
  // BookDate.FromJson(Map<String,dynamic>json){
  //   nameOfBook = json['nameOfBook'];
  //   imagePass = json['imagePass'];
  //   writerName = json['writerName'];
  //   rate = (json['rate'] as num?)?.toDouble();
  //   price = (json['price'] as num?)?.toDouble();
  //   sellingNumber = (json['sellingNumber'] as num?)?.toDouble();
  // }
}
