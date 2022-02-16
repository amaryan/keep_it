import 'package:flutter/material.dart';
import 'package:trello2/models/card_model.dart';
import 'package:trello2/models/card_section_model.dart';
import 'package:trello2/screens/card_section.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();

}

class _MainScreenState extends State<MainScreen> {

  late List<CardModel> cards;

  late List<CardSectionModel> sections;

  @override
  void initState() {
    super.initState();
    cards  = [ CardModel(title: 'Soy una tarjetiiita'),CardModel(title: 'Soy otra tarjeetaaa',tags: ['super importante','dificil'])];
    sections  = [ CardSectionModel(title: 'Lista 1',cards: cards), CardSectionModel(title: 'Lista 2',cards: cards)];
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Home paageee!'),
          leading: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.favorite),
          ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.account_circle_rounded),
        )
      ]),
      body:  ListView.builder(
        itemCount: sections.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) =>
           Padding(
             padding: const EdgeInsets.all(20.0),
             child: Column(
               mainAxisSize: MainAxisSize.min,
               crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(sections[index].title,textAlign: TextAlign.center,),
               Container(
                 height: 200,
                 width: 200,
                 child: ListView.builder(
                   itemCount: sections[index].cards!.length,
                   itemBuilder: (context, i) =>
                       Card(child: Text(sections[index].cards![i].title),),) ,)
              ],
          ),
           )),

    );
  }
}
