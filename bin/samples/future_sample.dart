import 'dart:async';

class FutureSample {

  main() async {
    print('Uhhhh I... ');
    var result = await get('http://asdasdasd');

    print(result);
  }

  Future<String> get(String url) {
    return new Future.delayed(new Duration(seconds: 3), () {
      return 'Got the vibe!';
    });
  }

  toString() { return 'FutureSample'; }
}