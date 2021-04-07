import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;

class ApiServiceProvider {
  static final String BASE_URL =
      "https://firebasestorage.googleapis.com/v0/b/srm-ap-amaravati.appspot.com/o/Python%2F1-Introduction-to-Python-Programming-1.pdf?alt=media&token=9ac486ee-c47c-4ae4-97e9-30b1607f9312";

  static Future<String> loadPDF() async {
    var response = await http.get(BASE_URL);

    var dir = await getApplicationDocumentsDirectory();
    File file = new File("${dir.path}/data.pdf");
    file.writeAsBytesSync(response.bodyBytes, flush: true);
    return file.path;
  }
}
