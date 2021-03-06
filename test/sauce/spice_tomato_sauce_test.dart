import 'package:test/test.dart';

import '../../lib/src/sauces/most_spice_tomato_sauce.dart';
import '../../lib/src/sauces/spice_tomato_sauce.dart';
import '../helper/mock_pizza_helper.dart';

void main(){
  SpiceTomatoSauce sut;

  setUp((){
    sut = SpiceTomatoSauce(mockPizza(price: 11));
  });

  test("Should return the right price", (){
    expect(sut.cost, 19.00);
  });

  test("Should return the right description", (){
    expect(sut.description, sut.pizza.description + ", molho de tomate levemente apimentado");
  });
}