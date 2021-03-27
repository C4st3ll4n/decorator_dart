import 'package:test/test.dart';

import '../../lib/src/pizza/thin_pizza.dart';
import '../../lib/src/sauces/tomato_sauce.dart';
import '../helper/mock_helper.dart';

void main() {
  ThinPizza sut;
  ToppingDecoratorSpy top;

  setUp(() {
    sut = ThinPizza();
  });

  test("Price should be eight reais", () {
    expect(sut.cost, 8.00);
  });

  test("Description should be right", () {
    expect(sut.description, "Massa de pizza fina");
  });

  test(
      "Should return the right cost when tomato sauce added to the large pizza",
          () {
        top = mockToppingDecorator(
          price: 5,
          pizza: sut,
        );
        expect(top.cost, 23.00);
        expect(top.description, "Massa de pizza fina, fake topping");
      });
}
