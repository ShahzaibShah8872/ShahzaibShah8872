import 'dart:math';

import 'package:taskofbmishahzaib/constantFile.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconTextFile.dart';
import 'ContainerFile.dart';
import 'constantFile.dart';
import 'resultFile.dart';
import 'CalculatorFile.dart';
import 'package:taskofbmishahzaib/constantFile.dart';

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
  int sliderHeight=100;
  int sliderWeight=0;
  int sliderAge=0;
  int min=0;
  int max=100;
  int randomNum=0;
  Random random= Random();
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
                        randomNum = random.nextInt(100);
                        min=0;
                        max=100;
                      });

                     // randomnumber =  (Random().nextInt(100)+1).toString();

                    },

                    colors: selectGender==Gender.male?activeColor:deActiveColor,
                    cardWidget: RepeatTextandIconWidget(
                      iconData: FontAwesomeIcons.male,
                      label: 'EASY',
                    ),
                  ),

              ),
              Expanded(
                child: RepeatContainerCode(
                  onPressed: (){
                    setState(() {
                      selectGender=Gender.female;
                      deactivate();

                    });
                  },
                  colors:  selectGender==Gender.female?activeColor:deActiveColor,
                  cardWidget: RepeatTextandIconWidget(
                    iconData: FontAwesomeIcons.female,
                    label: 'TOUGH',
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
                Text( 'VALUE',
                  style: kLableStyle,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '',
                      style:kNumberStyle,
                    ),
                    Text(
                      '',
                      style: kLableStyle,
                    )
                  ],
                ),
                Slider(
                  value: randomNum.toDouble(),
                  activeColor: Colors.deepOrange,
                  inactiveColor: Colors.green,
                  min: min.toDouble(),
                  max: max.toDouble(),
                  onChanged: (randomNum){
                    setState(() {
                      randomNum = randomNum;
                      //sliderHeight = randomNum.round();

                      //randomnumber =  (Random().nextInt(100)+1).toString();
                    });
                  },
                ),

              ],
            ),
          ),
          ),
          Expanded(child: Row(
          children: [
          Expanded(child:  RepeatContainerCode(colors: Colors.amberAccent,
            cardWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'MAX',
                  style: kLableStyle,
                ),
                Text(
                  sliderWeight.toString(),
                  style: kNumberStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RoundIcon(
                      iconData:FontAwesomeIcons.minus,
                      onPress: (){
                        setState(() {
                          sliderWeight--;
                        });
                      },
                    ),
                    SizedBox(width: 10.0,),
                    RoundIcon(
                      iconData: FontAwesomeIcons.plus,
                      onPress: (){
                        setState(() {
                          sliderWeight++;
                        });
                      },
                    ),

                  ],
                ),
              ],
            ),
          ),
          ),
          Expanded(child:  RepeatContainerCode(colors: Colors.amberAccent,
            cardWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'MIN',
                  style: kLableStyle,
                ),
                Text(
                  sliderAge.toString(),
                  style: kNumberStyle,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    RoundIcon(
                      iconData:FontAwesomeIcons.minus,
                      onPress: (){
                        setState(() {
                          sliderAge--;
                        });
                      },
                    ),
                    SizedBox(width: 10.0,),
                    RoundIcon(
                      iconData: FontAwesomeIcons.plus,
                      onPress: (){
                        setState(() {
                          sliderAge++;
                        });
                      },
                    ),

                  ],
                ),
              ],
            ),
          ),
          ),

        ],
      ),
          ),
          GestureDetector(
            onTap: (){

              Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultScreen()));
            },
            child:Container(
              child: Center(
                  child: Text('Calculate', style: kTitleStyleS2,)),
              color: Colors.deepOrange,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,

            ),
          ),
        ],
      )
    );
  }
}


class RoundIcon extends StatelessWidget {
  RoundIcon({@required this.iconData, @required this.onPress});
  final IconData iconData;
  final Function onPress;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      child: Icon(iconData),
      onPressed: onPress,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      shape: CircleBorder(),
      fillColor: Colors.black12,

    );
  }
}




