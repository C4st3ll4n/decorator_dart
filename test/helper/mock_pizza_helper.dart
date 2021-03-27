import 'package:mockito/mockito.dart';

import '../../lib/src/pizza.dart';

class PizzaSpy extends Mock implements Pizza {}

Pizza mockPizza({
  double price = 9.00,
  String desc = "Fake pizza base",
}) {
  PizzaSpy pizza = PizzaSpy();
  when(pizza.cost).thenReturn(price);
  when(pizza.description).thenReturn(desc);
  return pizza;
}
