import 'src/pizza.dart';
import 'src/pizza/large_pizza.dart';
import 'src/pizza/thin_pizza.dart';
import 'src/sauces/spice_tomato_sauce.dart';
import 'src/sauces/tomato_sauce.dart';
import 'src/topping/cream_chesse_topping.dart';
import 'src/topping/mozzarela_topping.dart';
import 'src/topping/vegan_topping.dart';
import 'src/toppingDecorator.dart';

void main(){
  final thinPizza = VeganTopping(TomatoSauce(ThinPizza()));
  print(thinPizza.description);

  Pizza largePizza = LargePizza();
  largePizza = SpiceTomatoSauce(largePizza);
  largePizza = CreamCheeseTopping(MozzarelaTopping(largePizza));
  print(largePizza.description);

  Pizza smallPizza = ThinPizza();
  ToppingDecorator smallPizzaWithTomatoSauce = TomatoSauce(smallPizza);
  Pizza mossarela = MozzarelaTopping(smallPizzaWithTomatoSauce);
  print(mossarela.description);
}