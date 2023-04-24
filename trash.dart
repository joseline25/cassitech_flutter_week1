import 'dart:io';
dynamic pricesSize = {"Bucket":100, "Trashbag": 200, "Wheelbarrow":300};


class Trash{

  int quantity = 0;
  String size = "";



  sizeSet(){
    print("Enter an integer value between 0 and 2 with 0 for \" Bucket \", 1 for \" Trashbag \" and 2 for \" Wheelbarrow \" ");
    String? s = stdin.readLineSync();
    if (s != null) {
      if (int.tryParse(s) != null) {
      int n = int.parse(s);
      
      switch (n) {
        case 0:
        
        size = "Bucket";
        break;

      case 1:

      size = "Trashbag";
      break;

      case 2:

      size = "Wheelbarrow";
      break;

      default:
      print("Enter an integer value between 0 and 2 with 0 for \" Bucket \", 1 for \" Trashbag \" and 2 for \" Wheelbarrow \" ");
    
      sizeSet();
    
    }
    
      } else{
        sizeSet();
      }
      }

    
  }


  quantitySet(){

    if (size == ""){
      sizeSet();
    }

    print("Set the quantity of trash ");
    String? s = stdin.readLineSync();
    if (s != null) {
      if (int.tryParse(s) != null) {
      int n = int.parse(s);
      if ( n > 0){
        quantity = n;
      }else{
        quantitySet();
      }

  }
  }else{
    quantitySet();
  }
  }


  price(){
    if (size == ""){
      sizeSet();
    }

    if (quantity == 0){
      quantitySet();
    }

    return pricesSize[size] * quantity;
  }

}
  
  

void  main() {
  Trash t = Trash();

  t.sizeSet();
  t.quantitySet();

  print("The size of the object is :");
  print(t.size);
  print("The quantity of the object is ");
  print(t.quantity);
}