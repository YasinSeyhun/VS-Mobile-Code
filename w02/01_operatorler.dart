import 'dart:ffi';

void main(List<String> args) {
  //A- binary operatorler-ikili op.
  // 01-Aritmetik op. 
  // + , - , * , / , %   => sol_operand operator sag_operand => 1+2   => geriye değer döndür
  double a = 1/9 + 8*9 - 9 + 5 -15%3;
  
  // 02-Assigment/Atama Operatörleri 
  // = , += , -= , *= , /= , %=  => sol_operand operator sag_operand => int a ; a = 1;
   double a2 = 5;
   a2 *= 5;
   a2 += 1;
   // 03-Relational/İlişkisel op 
   // < , > , <= , >= , != , ==   => => sol_operand operator sag_operand => 1+2 => geriye sayısal boolean döndür
   bool is0k1 = 1 != 1;
   // 04-Logical/Mantıksal op
   // && , ||  => sol_operand operator sag_operand => 1+2  => geriye sayısal boolean döndür
   bool is0k2 = ((1<5) && (8==9)) || (9 >= -9);  


  //B-unary operatorler-tekil
  // 04-Logical/Mantıksal Op.
  // |  => operator sag_operand => !(true/false) => geriye sayısal boolean döndür
  bool is0k3 = (((1<5)  &&  (8==9)) || (9>=-9));
  // 05-Increment/Decrement-Artırma/Azaltma Op.
  // ++ , --   =>   a++ ; a--;  => geriye genelde sayısal değer döner
  double a3 = 5;
  a3++;
  a3= ++a3 + --a2 * (a--); 


  //C-ternary operatorler-üçlü
  String cinsiyet = "Bayan";
  double yasSinir;
  yasSinir = cinsiyet == "Erkek" ?1:0;


}