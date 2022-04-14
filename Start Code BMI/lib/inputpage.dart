import 'package:bmi_calculator/constantFile.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconTextFile.dart';
import 'ContainerFile.dart';
import 'constantFile.dart';
import 'resultFile.dart';
import 'CalculatorFile.dart';
import 'package:bmi_calculator/constantFile.dart';

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
  int sliderWeight=60;
  int sliderAge=20;
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
          Expanded(child:  RepeatContainerCode(colors: Colors.amberAccent,
            cardWidget: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'WEIGHT',
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
                  'AGE',
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




