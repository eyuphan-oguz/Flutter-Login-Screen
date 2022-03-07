

import 'package:randevu/userRegister.dart';

void addUser({required String name, required String email , required String password}){


  User user=User(name: name,email: email,password: password);

  late List<User>kayit=[];
  kayit.add(user);

  print("eklendi");
  print(kayit.length);


}