
import 'package:flutter/material.dart';
import 'sql_helper.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: test,
      ),
    );
  }
}


String nom = "vinyssus";
String tel = "99501379";

Future<void> test() async {
  await SQLHelper.createItem(nom, tel);
  await SQLHelper.updateItem(2, nom, tel);
  await SQLHelper.deleteItem(2);

  List<Map<String, dynamic>> journals = await SQLHelper.getItems();
  print("****************************************");
  for(int i=0;i<journals.length;i++){
    print(journals[i]['id'].toString()+":"+journals[i]['title']);
  }
  print("*********************************************");
}
