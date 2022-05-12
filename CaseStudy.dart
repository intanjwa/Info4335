import 'dart:io';
import 'SeatsPrice.dart';

void main() {
  stdout.writeln("Types of seat (Double / Single)?: ");
  String? types = stdin.readLineSync();

  dynamicseats(types);

  Seatsprice a = new Seatsprice();
  a.setPrice(types);
}

void dynamicseats(types) {
  if (types == 'Single') {
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

    print("\nAvailable seats: $single");
  } else if (types == 'Double') {
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

    if (BC == 'Isle') {
      print("The available seats: $isle");
      stdout.writeln("Choose your seat number?: ");
      var IsleSeat = stdin.readLineSync();
      var intIsleSeat = int.parse(IsleSeat!);

      isle.remove(intIsleSeat);
      stdout.write(
          "\nYour seat type is $types ($BC) and your seat number is $intIsleSeat ");

      print("\nAvailable seats: $isle");
    } else if (BC == 'Window') {
      print(window);
      stdout.writeln("Choose your seat number?: ");
      var Windowseat = stdin.readLineSync();
      var intWindowseat = int.parse(Windowseat!);

      window.remove(intWindowseat);
      stdout.write(
          "\nYour seat type is $types ($BC) and your seat number is $intWindowseat ");

      print("\nAvailable seats: $window");
    }
  }
}