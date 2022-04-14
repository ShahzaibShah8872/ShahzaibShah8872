import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconTextFile.dart';
import 'ContainerFile.dart';
const activeColor = Colors.blueAccent;
const deActiveColor = Colors.amberAccent;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = deActiveColor;
  Color feMaleColor = deActiveColor;
  void updateColor(int gender)
  {
    if(gender == 1){
      maleColor = activeColor;
      feMaleColor = deActiveColor;
    }
    if(gender == 2){
      feMaleColor = activeColor;
      maleColor = deActiveColor;
    }

  }
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
                child: GestureDetector(
                  onTap: (){
                    setState(() {
                      updateColor(1);
                    });
                  },

                  child: RepeatContainerCode(
                    colors: maleColor,
                    cardWidget: RepeatTextandIconWidget(
                      iconData: FontAwesomeIcons.male,
                      label: 'MALE',
                    ),
                  ),
                ),
              ),
              Expanded(child:  GestureDetector(
                onTap: (){
                  setState(() {
                    updateColor(2);
                  });
                },
                child: RepeatContainerCode(colors: feMaleColor,
                  cardWidget: RepeatTextandIconWidget(
                    iconData: FontAwesomeIcons.female,
                    label: 'FEMALE',
                  ),
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



