import 'package:test/test.dart';

import '../../lib/src/pizza/large_pizza.dart';
import '../helper/mock_topping_helper.dart';

void main() {
  LargePizza sut;
  ToppingDecoratorSpy top;

  setUp(() {
    sut = LargePizza();
  });

  test("Price should be eighten reais", () {
    expect(sut.cost, 18.00);
  });

  test("Description should be right", () {
    expect(sut.description, "Massa de pizza grande");
  });

  test(
      "Should return the right cost when tomato sauce added to the large pizza",
      () {
    top = mockToppingDecorator(
      price: 5,
      pizza: sut,
    );
    expect(top.cost, 23.00);
    expect(top.description, "Massa de pizza grande, fake topping");
  });
}
