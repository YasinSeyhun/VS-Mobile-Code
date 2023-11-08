void main(List<String> args) {
  
  List<int> list;

// object promotion
  if(DateTime.now().hour==5){
    list = [1,2,3];
  }
  else{
   // list = [1,2];
   list =getList()!;
  }

  print(list!.length!);
}

List<int> ? getList(){

  return [1,2,3];
}