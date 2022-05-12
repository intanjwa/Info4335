class Seatsprice {
//properties
  var price;

//setter Name
  void setPrice(types) {
    if (types == 'Single') {
      String? price = "RM55";
      print("The price for Single seat is $price");
    } else if (types == 'Double') {
      String? price = "RM40";
      print("The price for Double (Isle/Window) seat is $price");
    }
  }
}