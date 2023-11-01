
//build-in - generic class



List<int> list = [];
List<String> list2 = [];
Map<int,String> coll = {}; //ikili veri

//user defined 

class SayiKuyrugu {
 List<int> list = [];
 void ekle(int a){
  list.add(a);
 }
 int cikar(){
  var removed = list.first;
  list.remove(list.first);
  return removed;
 }
}

class Kuyruk<Type> {

}
