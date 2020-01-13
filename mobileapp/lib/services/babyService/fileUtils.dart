// import 'package:mobileapp/widgets/teethCard.dart';
// import 'package:path_provider/path_provider.dart';
// import 'dart:io';
 
// class FileUtils {
//   static Future<String> get getFilePath async {
//     final directory = await getApplicationDocumentsDirectory();
//     logger.wtf(directory.path);
//     return directory.path;
//   }
 
//   static Future<File> get getFile async {
//     //final path = await getFilePath;
//     final path = "/home/pathum/Documents/eMOH-Project/mobileapp/lib/services";
//     logger.w('${path}');
//     //return File(path);
//    return File('$path/myfile.text');
//   }
 
//   static Future<File> saveToFile(String data) async {
//     final file = await getFile;
//     return file.writeAsString(data);
//   }
 
//   static Future<String> readFromFile() async {
//     try {
//       final file = await getFile;
//       String fileContents = await file.readAsString();
//       return fileContents;
//     } catch (e) {
//       return "";
//     }
//   }
// }


//   // Future<File> get getFile async {
//   //   //final path = await getFilePath;
//   //   final path = "/home/pathum/Documents/eMOH-Project/mobileapp/lib/services";
//   //   logger.wtf('${path}');
//   //   //return File(path);
//   //  return File('$path/chartdata');
//   // }
 
//   // Future<File> saveToFile(String data) async {
//   //   final file = await getFile;
//   //   logger.w('saving data');
//   //   return file.writeAsString(data);
//   // }
 
//   // Future<String> readFromFile() async {
//   //   logger.v('reading file');
//   //   try {
//   //     logger.v('reading file');
//   //     final file = await getFile;
//   //     String fileContents = await file.readAsString();
//   //     logger.wtf(fileContents);
//   //     return fileContents;
//   //   } catch (e) {
//   //     return "";
//   //   }
//   // }


import 'dart:io';
import 'dart:async';

import 'package:mobileapp/widgets/teethCard.dart';

var myFile = new File('file.txt');

writeData() {
  
  final filename = '/home/pathum/Documents/eMOH-Project/mobileapp/lib/services/chartdata';
  new File(filename).writeAsString('some content')
    .then((File file) {
      // Do something with the file.
    });
}


readData() {
  new File('/home/pathum/Documents/eMOH-Project/mobileapp/lib/services/chartdata').readAsString().then((String contents) {
    print(contents);
    logger.wtf(contents);
  });
}