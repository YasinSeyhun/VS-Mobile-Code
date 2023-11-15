void main(List<String> args) {
  int a = 1;
  int b = 2;

  if (a > b) {
    print("$a > $b");
  } else if (a < b) {
    print("$a < $b");
  } else {
    print("$a = $b");
  }

  int gun = 7;

  switch (gun) {
    case 1:
      print("Pazartesi");
      break;
    case 2:
      print("Sali");
      break;
    case 3:
      print("Çarşamba");
      break;
    case 4:
      print("Perşembe");
      break;
    case 5:
      print("Cuma");
      break;
    case 6:
      print("Cumartesi");
      break;
    //hiçbir koşul olmaz ise default kullanılır
    default:
      print("Pazar");
      break;
  }


//ternany if 
String name = (gun ==5)?"Okula gitme":"Okula git";
print(name);
}
