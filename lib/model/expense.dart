class Expense{
  String title;
  DateTime date;
  double value;
  bool isDebit;
  
  Expense({required this.title, required this.date, required this.isDebit, required this.value});
  
  //DATABASE COLUMNS
  final String columnTitle = 'title';
  final String columnDate = 'date';
  final String columnValue = 'value';
  final String columnIsDebit = 'isDebit';

  Map<String, Object?> toMap(){
    var map = <String, Object?>{
      columnTitle: title,
      columnDate: date.toIso8601String(),
      columnValue: value,
      columnIsDebit: isDebit ? 1 : 0
    };
    return map;
  }
  
  // Expense.fromMap(Map<String, Object?> map){
  //   title = map[columnTitle] as String;
  //   date = DateTime.parse(map[columnDate] as String);
  //   value = map[columnValue] as double;
  //   isDebit = (map[columnIsDebit] as int) == 1;
  // }
}