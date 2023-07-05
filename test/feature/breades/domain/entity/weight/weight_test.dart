/// weight_test
import 'dart:io';
import 'dart:convert';

import 'package:my_cat_network/feature/breades/domain/entity/weight/weight.dart';
import 'package:test/test.dart';

void main() {
  group("Weight model", () {
    test("Test 1. fromJson", () async {
      String response = await jsonConverter("assets/test/jsons/weight.json");
      final json = jsonDecode(response);
      final actual = Weight.fromJson(json);
      const matcher = Weight(imperial: "7  -  10", metric: "3 - 5");
      expect(actual, matcher);
    });

    test("Test 2. toJson", () async {
      const weight = Weight(imperial: "7  -  10", metric: "3 - 5");
      final actual = weight.toJson();

      String response = await jsonConverter("assets/test/jsons/weight.json");
      final matcher = jsonDecode(response);

      expect(actual, matcher);
    });
  });
}

/// json_converter

Future<String> jsonConverter(String path) {
  final file = File(path);
  return file.readAsString();
}

/// json
// {
// "imperial": "7  -  10",
// "metric": "3 - 5"
// }