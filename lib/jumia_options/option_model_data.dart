import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:jumia_food_clone/jumia_options/options_model.dart';

class OptionData {
  List<Option> options = [
    Option(
      title: "Restaurant",
      subtitle: "All the food you love, from restaurants near you",
      icon: MaterialCommunityIcons.food,
    ),
    Option(
      title: "Supermarket",
      subtitle: "Fresh groceries and everyday essentials",
      icon: MaterialIcons.store,
    ),
    Option(
      title: "Alcohol and More",
      subtitle: "All the drinks you love and more",
      icon: Entypo.drink,
    ),
    Option(
      title: "Market",
      subtitle: "Fresh Groceries and Produce",
      icon: MaterialIcons.store,
    ),
    Option(
      title: "Pharmacy and Lab",
      subtitle: "Medication and Health Care",
      icon: Fontisto.drug_pack
    ),
    Option(
      title: "Stay Safe",
      subtitle: "Safety essentials to protect loved ones",
      icon: Foundation.first_aid
    ),
  ];
}
