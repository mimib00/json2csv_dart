import 'package:csv/csv.dart';

/// This class contains all methods related to converting json to csv
class CSVConvertor {
  const CSVConvertor();

  /// This method will take [data] as input and return a [String] as csv output
  String convert(List<Map<dynamic, dynamic>> data) {
    // get the keys in all the map
    final List<String> keys = [];

    for (var item in data) {
      for (var key in item.keys) {
        if (keys.contains(key)) continue;
        keys.add(key);
      }
    }

    // genrate the rows.
    final List<List<String>> rows = [keys]; // first row is always the key.

    for (var item in data) {
      final List<String> row = [];
      for (var key in keys) {
        row.add((item[key] ?? "").toString());
      }
      rows.add(row);
    }

    return const ListToCsvConverter().convert(rows);
  }
}
