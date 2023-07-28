import '../service/io_service.dart';

class Home {
  IoService io;
  Home(this.io);
  String lang = "uz";

  void start() async {
    io.writeLn("""
Tilni tanlang
1. O'zbek
2. Rus
3. Ingliz
-->
""");

    String input = io.read();
    switch (input) {
      case "1":
        lang = "uz";
      case "2":
        lang = "ru";
      case "3":
        lang = "en";
      default:
        io.writeLn("1-3 oraliqda tanlang");
        start();
    }

  io.write("""
- Saladlar
- Ichimliklar
- Fast Food
- Shirinliklar
- Milliy taomlar
""", lang);
  }
}
