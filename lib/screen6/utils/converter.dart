import 'dart:convert';

class Converters {
  static List<String> jsonStringToStringList(String rawValue) {
    try {
      return json.decode(rawValue) as List<String>;
    } catch (e, stacktrace) {
      print(stacktrace);
    }

    return [];
  }

  static bool numberToBoolean(num rawValue) {
    return rawValue == 2;
  }

  static DateTime stringToDateTime(String rawValue) {
    return DateTime.tryParse(rawValue);
  }
}
