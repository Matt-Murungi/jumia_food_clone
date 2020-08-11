import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:jumia_food_clone/drawer/drawer_model.dart';

class DrawerModelData {
  List<DrawerModel> drawermodels = [

    DrawerModel(
      title: "Your Location",
      icon: SimpleLineIcons.location_pin
    ),
      DrawerModel(
      title: "Vendors",
      icon: AntDesign.shoppingcart
    ),
      DrawerModel(
      title: "Deals",
      icon: Feather.percent
    ),
      DrawerModel(
      title: "Airtime and Bills",
      icon: AntDesign.wallet
    ),
      DrawerModel(
      title: "Account",
      icon: MaterialIcons.person_outline
    ),
      DrawerModel(
      title: "Orders",
      icon: Octicons.request_changes
    ),
      DrawerModel(
      title: "Address Book",
      icon: Feather.book_open
    ),
  ];
}
