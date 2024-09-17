# json2csv_dart

[![pub package](https://img.shields.io/pub/v/json2csv_dart.svg)](https://pub.dev/packages/json2csv_dart)

A library that help you convert list of json to a csv formatted string.

# Getting Started

## 1. Install `json2csv_dart` package into your project

```sh
dart pub add dev:json2csv_dart
```

## 2. Import `json2csv_dart` package into your project

```dart
import 'package:json2csv_dart/json2csv_dart.dart';
```

## 3. Use `json2csv_dart`

```dart
    // call API or get json from file.

    final List<Map<String, dynamic>> data = [
    {...},
    {...},
    {...},
    {...},
    {...},
    ];

    final csv = const CSVConvertor().convert(data);

    // do with the output what you want.
```
