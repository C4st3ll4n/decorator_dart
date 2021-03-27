import 'dart:math';

import '../pizza.dart';
import '../toppingDecorator.dart';

class MozzarelaTopping implements ToppingDecorator{

  MozzarelaTopping(this.pizza);

  final Pizza pizza;
  @override
  double get cost => pizza.cost + 4.00;

  @override
  String get description => pizza.description + ", mussarela";

}