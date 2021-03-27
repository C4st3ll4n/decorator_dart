import 'pizza.dart';

class ToppingDecorator implements Pizza{

  ToppingDecorator(this.pizza);

  final Pizza pizza;

  @override
  double get cost => pizza.cost;

  @override
  String get description => pizza.description;

}