import '../toppingDecorator.dart';
import 'spice_tomato_sauce.dart';

class MostSpiceTomatoSauce extends SpiceTomatoSauce{

  MostSpiceTomatoSauce(pizza) : super(pizza);

  @override
  double get cost => super.cost;

  @override
  String get description => pizza.description + ", molho de tomate altamente apimentado";

}