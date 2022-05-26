import 'dart:io';

class Item {
  late int id;
  late String name;
  late var seatnum;
  late String price;
  late DateTime created_at;
  late DateTime updated_at;

  Item(int id, String name, var seatnum, String price) {
    this.id = id;
    this.name = name;
    this.seatnum = seatnum;
    this.price = price;
    this.created_at = DateTime.now();
    this.updated_at = DateTime.now();
  }
}

void main() {
  var currentItemId = 1;
  List<Item> itemList = [];

  while (true) {
    print("Book your ticket(s): ");
    print("Choose seat(s): ");
    print("1. Single seat");
    print("2. Double seats");
    print("3. Display summary");
    print("7. Exit");

    stdout.write("Enter your choice: ");
    int input = int.parse(stdin.readLineSync()!);

    if (input == 1) {
      createItem1(currentItemId, itemList);
      currentItemId++;
    } else if (input == 2) {
      createItem2(currentItemId, itemList);
      currentItemId++;
    } else if (input == 3) {
      displayAllItem(itemList);
    } else {
      break;
    }
    print('\n');
  }
}

//function for Single (type of seat)
void createItem1(int currentId, List<Item> items) {
  const String types = 'Single';
  const String price = 'RM60';
  Map<int, String> single = {
    1: "A",
    4: "A",
    7: "A",
    10: "A",
    13: "A",
    16: "A",
    19: "A",
    22: "A",
    25: "A",
    28: "A"
  };

  print("The available seats: $single");
  stdout.writeln("Choose your seat number?: ");
  var Singleseat = stdin.readLineSync();
  var intSingleseat = int.parse(Singleseat!);

  single.remove(intSingleseat);
  stdout.write(
      "\nYour seat type is $types and your seat number is $intSingleseat ");

  items.forEach((Item item) {
    if (intSingleseat == intSingleseat) {
      print("\n Seat number $intSingleseat has been taken");
      print("\nAvailable seats: $single");
      return;
    }
  });

  var newItem = Item(currentId, types, intSingleseat, price);
  items.add(newItem);
}

//function for Double (type of seat)
void createItem2(int currentId, List<Item> items) {
  const String types = 'Double';
  const String price = 'RM50';
  stdout.writeln("Choose (Isle / Window)?: ");
  String? BC = stdin.readLineSync();

  Map<int, String> isle = {
    2: "B",
    5: "B",
    8: "B",
    11: "B",
    14: "B",
    17: "B",
    20: "B",
    23: "B",
    26: "B",
    29: "B"
  };

  Map<int, String> window = {
    3: "C",
    6: "C",
    9: "C",
    12: "C",
    15: "C",
    18: "C",
    21: "C",
    24: "C",
    27: "C",
    30: "C"
  };

  //for isle (types of seat)
  if (BC == 'Isle') {
    print("The available seats: $isle");
    stdout.writeln("Choose your seat number?: ");
    var IsleSeat = stdin.readLineSync();
    var intIsleSeat = int.parse(IsleSeat!);

    var seats = intIsleSeat;

    isle.remove(intIsleSeat);
    stdout.write(
        "\nYour seat type is $types ($BC) and your seat number is $intIsleSeat\n ");

    items.forEach((Item item) {
      if (intIsleSeat == intIsleSeat) {
        print("\n Seat number $intIsleSeat has been taken");
        print("\nAvailable seats: $isle");
        return;
      }
    });

    var newItem = Item(currentId, types, seats, price);
    items.add(newItem);
  }
  //for window (types of seat)
  else if (BC == 'Window') {
    print(window);
    stdout.writeln("Choose your seat number?: ");
    var Windowseat = stdin.readLineSync();
    var intWindowseat = int.parse(Windowseat!);

    var seats = intWindowseat;

    window.remove(intWindowseat);
    stdout.write(
        "\nYour seat type is $types ($BC) and your seat number is $intWindowseat \n");

    items.forEach((Item item) {
      if (intWindowseat == intWindowseat) {
        print("\n Seat number $intWindowseat has been taken");
        print("\nAvailable seats: $window");
        return;
      }
    });

    //add item into list
    var newItem = Item(currentId, types, seats, price);
    items.add(newItem);
  }
}

//Display booked seat(s)
void displayAllItem(List<Item> items) {
  print('\n\n');
  items.forEach((Item item) {
    print(
        'id: ${item.id}, Types: ${item.name}, No.seat: ${item.seatnum}, Price: ${item.price}\n ${item.created_at}, ${item.updated_at}\n');
  });
}
