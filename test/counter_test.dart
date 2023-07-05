import 'package:my_cat_network/counter.dart';
import 'package:test/test.dart';

void main() {
  group('Counter test', () => (){
    test(
      "Test 1: This text for counter class",
          () => (){
        final counter = Counter();
        expect(counter.value, 0);
      },
    );
    test(
      "Test 2: This text for counter class",
          () => (){
        final counter = Counter();
        counter.increment();
        expect(counter.value, 1);
      },
    );
    test(
      "Test 2: This text for counter class",
          () => (){
        final counter = Counter();
        counter.decrement();
        expect(counter.value, -1);
      },
    );
  });
}
