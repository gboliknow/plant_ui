import 'package:flutter/material.dart';
import 'package:plant_ui/constants.dart';

import 'image_and_icons.dart';
import 'title_and_price.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size*0.9;
    return SafeArea(
          child: Container(
       
        child: Column(
          children: <Widget>[
            ImageAndIcons(size: size),
            TitleAndPrice(title: "Brian", country: "France", price: 320),
            SizedBox(height: kDefaultPadding),
            Row(
              children: <Widget>[
                SizedBox(height: size.height*0.07,),
                SizedBox(
                  width: size.width / 2,
                  height:size.height*0.11 -3.8,
                  child: FlatButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                    color: kPrimaryColor,
                    onPressed: () {},
                    child: Text(
                      "Buy Now",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: FlatButton(
                    onPressed: () {},
                    child: Text("Description"),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
