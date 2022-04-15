import 'package:flutter/material.dart';
import 'constantFile.dart';
import 'package:taskofbmishahzaib/ContainerFile.dart';
import 'inputpage.dart';

class ResultScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Result'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Center(
                child: Text(
                  'Your Result',
                  style: kTitleStyleS2,
                ),
              ),
            ),
          ),
            Expanded (
            flex: 5,
    child: RepeatContainerCode(
    colors:  activeColor,
    cardWidget:Column(
    mainAxisAlignment:MainAxisAlignment.spaceEvenly,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    Text(
    'Normal',
    style:kResultTextStyle ,
    ),
    Text(
    '18.3',
    style: kBMITextStyle,
    ),
    Text(
    'BMI is LOW you Should have to work more',
    textAlign: TextAlign.center,
    style: kBodyTextStyle,
    ),
    ],
    )
    ),
    ),
          Expanded(
            child:  GestureDetector(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>InputPage()));
              },
              child:Container(
                child: Center(
                    child: Text('Recalculate', style: kTitleStyleS2,)),
                color: Colors.deepOrange,
                margin: EdgeInsets.only(top: 10.0),
                width: double.infinity,
                height: 80.0,

              ),
            ),
          ),

        ],
      ),
    );
  }
}
