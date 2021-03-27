import 'package:meta/meta.dart';
import 'package:mockito/mockito.dart';

import '../../lib/src/pizza.dart';
import '../../lib/src/toppingDecorator.dart';

class ToppingDecoratorSpy extends Mock implements ToppingDecorator {}

ToppingDecoratorSpy mockToppingDecorator(
    {double price = 10.0,
    String desc = ", fake topping",
    @required Pizza pizza}) {
  ToppingDecoratorSpy top = ToppingDecoratorSpy();
  when(top.pizza).thenReturn(pizza);
  when(top.description).thenReturn(pizza.description + desc);
  when(top.cost).thenReturn(price + pizza.cost);
  return top;
}
