import 'package:bmi_calculator/constantFile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconTextFile.dart';
import 'ContainerFile.dart';
import 'constantFile.dart';

enum Gender{
  male,
  female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectGender;
  int sliderHeight=180;
  //Color maleColor = deActiveColor;
  //Color feMaleColor = deActiveColor;
  //void updateColor(Gender gendertype)
  //{
    //if(gendertype == Gender.male){
      //maleColor = activeColor;
      //feMaleColor = deActiveColor;
    //}
    //if(gendertype == Gender.female){
   //   feMaleColor = activeColor;
     // maleColor = deActiveColor;
  //  }

  //}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Row(
            children: [
              Expanded(
                  child: RepeatContainerCode(
                    onPressed: (){
                      setState(() {
                        selectGender=Gender.male;
                      });
                    },

                    colors: selectGender==Gender.male?activeColor:deActiveColor,
                    cardWidget: RepeatTextandIconWidget(
                      iconData: FontAwesomeIcons.male,
                      label: 'MALE',
                    ),
                  ),

              ),
              Expanded(
                child: RepeatContainerCode(
                  onPressed: (){
                    setState(() {
                      selectGender=Gender.female;
                    });
                  },
                  colors:  selectGender==Gender.female?activeColor:deActiveColor,
                  cardWidget: RepeatTextandIconWidget(
                    iconData: FontAwesomeIcons.female,
                    label: 'FEMALE',
                  ),
                ),

              ),
            ],
          ),),
          Expanded(child:  RepeatContainerCode(
            colors: Colors.amberAccent,
            cardWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('HEIGHT',
                  style: kLableStyle,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      sliderHeight.toString(),
                      style:kNumberStyle,
                    ),
                    Text(
                      'cm',
                      style: kLableStyle,
                    )
                  ],
                ),
                Slider(
                  value: sliderHeight.toDouble(),
                  min: 120.0,
                  max: 220.0,
                  activeColor: Colors.deepOrange,
                  inactiveColor: Colors.green,
                  onChanged: (double newValue){
                    setState(() {
                      sliderHeight = newValue.round();
                    });
                  },
                ),

              ],
            ),
          ),
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



