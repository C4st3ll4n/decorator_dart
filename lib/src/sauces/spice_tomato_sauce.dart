import '../pizza.dart';
import '../toppingDecorator.dart';

class SpiceTomatoSauce implements ToppingDecorator{

  SpiceTomatoSauce(this.pizza);

  @override
  final Pizza pizza;


  @override
  double get cost => pizza.cost + 8.00;

  @override
  String get description => pizza.description + ", molho de tomate levemente apimentado";

}