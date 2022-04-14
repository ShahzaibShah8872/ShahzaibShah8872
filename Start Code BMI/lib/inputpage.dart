import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(child: Row(
            children: [
              Expanded(
                child: RepeatContainerCode(
                  colors: Colors.amberAccent,
                  cardWidget: RepeatTextandIconWidget(
                    iconData: FontAwesomeIcons.male,
                    label: 'MALE',
                  ),
                ),
              ),
              Expanded(child:  RepeatContainerCode(colors: Colors.amberAccent,
                cardWidget: RepeatTextandIconWidget(
                  iconData: FontAwesomeIcons.female,
                  label: 'FEMALE',
                ),
              ),
              ),
            ],
          ),),
          Expanded(child:  RepeatContainerCode(colors: Colors.amberAccent,),
          ),
          Expanded(child: Row(
          children: [
          Expanded(child:  RepeatContainerCode(colors: Colors.amberAccent,),
          ),
          Expanded(child:  RepeatContainerCode(colors: Colors.amberAccent,),
          ),
        ],
      ),
          ),
        ],
      )
    );
  }
}

class RepeatTextandIconWidget extends StatelessWidget {
  RepeatTextandIconWidget({@ required this.iconData,this.label});
  final IconData iconData;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(label,style: TextStyle(
          fontSize: 18.0,
          color: Colors.black,
        ),
        ),
      ],

    );
  }
}

class RepeatContainerCode extends StatelessWidget {
  RepeatContainerCode({@ required this.colors,this.cardWidget});
  final Color colors;
  final Widget cardWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      child: cardWidget,
      decoration: BoxDecoration(
        color:colors,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}