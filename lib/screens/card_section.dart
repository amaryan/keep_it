import 'package:flutter/material.dart';
import 'package:trello2/models/card_section_model.dart';

class CardSection extends StatefulWidget {
  const CardSection({Key? key, required this.section,}) : super(key: key);
  final CardSectionModel section;
  @override
  _CardSectionState createState() => _CardSectionState();
}

class _CardSectionState extends State<CardSection> {
List<String> tags = ['tag 1','tag 2'];

  @override
  Widget build(BuildContext context) {
   return Container();

  }

  @override
  void initState() {
    super.initState();

  }
}
