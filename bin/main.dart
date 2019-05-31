// import 'package:hello/hello.dart' as hello;

// main(List<String> arguments) {
//   print('Hello world: ${hello.calculate()}!');
// }

import 'samples/future_sample.dart';
import 'dart:async';

void main() async {
  var fs = new FutureSample();
  print(await fs.main());
}