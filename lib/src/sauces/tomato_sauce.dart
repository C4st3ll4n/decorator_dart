import '../pizza.dart';
import '../toppingDecorator.dart';

class TomatoSauce implements ToppingDecorator{

  TomatoSauce(this.pizza);

  @override
  final Pizza pizza;


  @override
  double get cost => pizza.cost + 5.00;

  @override
  String get description => pizza.description + ", molho de tomate";

}