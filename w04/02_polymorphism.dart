void main(List<String> args) {


isYaptir(insan());
isYaptir4(Canli());
isYaptir2(balik());
isYaptir3(Kus());

communicate(SmsService());
communicate(EmailService());

}

void communicate(MessageService messenger) {
  messenger.SendMessage();
}


// poliformizm soyut sınıflarla çalışabilir.

void isYaptir(insan i){
i.hareketEt();
}

void isYaptir2(balik b){
b.hareketEt();
}

void isYaptir3(Kus k){
k.hareketEt();
}

void isYaptir4(Canli c){
c.hareketEt();
}
 

class Canli {

  void hareketEt(){
    print("Canli hareket etti");
    
  }
}

class Kus extends Canli {

   void hareketEt(){
    print("KUş uçmaya başladi");
  
}
}

class balik extends Canli {
   void hareketEt(){
    print("Balik yüzmeye başladi");

}
}

class insan extends Canli {
   void hareketEt(){
    print("İnsan hareket etti");
}
}



abstract class MessageService {
  void SendMessage();
  void ReadMessage();
  
}

class SmsService implements MessageService {
  @override
  void ReadMessage() {
    // TODO: implement ReadMessage
  }

  @override
  void SendMessage() {
    // TODO: implement SendMessage
  }
 
  }
  

class EmailService implements MessageService {
  @override
  void ReadMessage() {
    // TODO: implement ReadMessage
  }

  @override
  void SendMessage() {
    // TODO: implement SendMessage
  }
  
}



