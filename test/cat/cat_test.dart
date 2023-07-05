import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:my_cat_network/cat.dart';
import 'package:test/test.dart';

// Annotation which generates the cat.mocks.dart library and the MockCat class.
@GenerateNiceMocks([MockSpec<Cat>()])
import 'cat_test.mocks.dart';

void main() {
  // Create mock object.
  var cat = MockCat();

  test("use when method on the mockito", () => {
    when(cat.sound()).thenReturn("Purr"),
    expect(cat.sound(), "Purr"),
  });
}