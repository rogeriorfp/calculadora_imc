import 'dart:convert';
import 'dart:io';

prompt(String texto, [Function? reader]) {
  print(texto);
  if (reader != null) {
    return reader();
  }
}

String readString() {
  return stdin.readLineSync(encoding: utf8) ?? "";
}

double? readDouble() {
  return double.tryParse(stdin.readLineSync(encoding: utf8) ?? "");
}
