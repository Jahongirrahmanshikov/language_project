import 'dart:io';
import 'package:translator/translator.dart';
class IoService {
  Future<void> write(String input, String toLanguage) async {
    final translator = GoogleTranslator();
    Translation translated = await translator.translate(input, to: toLanguage);
    print(translated.text);
  }

  void writeLn(String text) => stdout.writeln(text);

  String read() => stdin.readLineSync() ?? "";  
}
