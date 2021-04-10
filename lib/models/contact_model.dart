import 'package:lista_de_contatos/helpers/contact_helper.dart';

class Contact {
  int id;
  String name;
  String email;
  String phone;
  String img;

  Contact.formMap(Map map) {
    id = map[idColumn];
    name = map[nameColumn];
    email = map[emailColumn];
    phone = map[phoneColumn];
    img = map[imgColumn];
  }

  Map toMap() {
    Map<String, dynamic> map = {
      nameColumn: name,
      emailColumn: email,
      phoneColumn: phone,
      imgColumn: img,
    };
    if (id != null) {
      map[idColumn] = id;
    }
  }

  String toString() {
    return "Contact: [id: $id, name: $name, email: $email, phone: $phone, img: $img]";
  }
}
