import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const bottomContainerHeight = 80.0;
const activeCardColor = Color(0xFF4e5159);
const inactiveCardColor = Color(0xFF363840);
const bottomContainerColor = Color(0xFFfd999a);

enum Gender {
  male, female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: ReusableCard(
                        cardColor: selectedGender == Gender.male? activeCardColor : inactiveCardColor,
                        cardChild: IconContent(icon: FontAwesomeIcons.mars, label: 'MALE',) ,
                      ),
                    )
                ),
                Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: ReusableCard(
                        cardColor: selectedGender == Gender.female? activeCardColor : inactiveCardColor,
                        cardChild: IconContent(icon: FontAwesomeIcons.venus, label: 'FEMALE',) ,
                      ),
                    )
                ),
              ],
            ),
          ),
          Expanded(child: ReusableCard(cardColor: activeCardColor)),
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(child: ReusableCard(cardColor: activeCardColor)),
                Expanded(child: ReusableCard(cardColor: activeCardColor)),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            margin: EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomContainerHeight,
          )
        ],
      ),
      floatingActionButton: Theme(
        data: ThemeData(accentColor: Color(0xFFfec8c9)),
        child: FloatingActionButton(
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}
