import 'package:universal_io/io.dart';

String fixture(String pathToFile) =>
    File('test/fixtures/$pathToFile').readAsStringSync();
