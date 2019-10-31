
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
///横向的：Imageview -text-text widget
//var mLayoutBackgroundColor=Color(0xFFffffff);
/*class horizontalWidget extends StatefulWidget{
  var mLayoutBackgroundColor=Color(0xFFffffff);

  horizontalWidget(Color mLayoutBackgroundColor,){
      this.mLayoutBackgroundColor=mLayoutBackgroundColor;
  }
  @override
  State createState() {
       return horizontalWidgetState();
  }
}*/
class horizontalWidget{
  Widget build(mLayoutBackgroundColor,textColor,dividerColor){
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          padding:
          EdgeInsets.only(left: 16, top: 14, right: 16, bottom: 14),
          color: mLayoutBackgroundColor,
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              Container(
                //  padding: EdgeInsets.only(left: 16, top: 14, right: 16, bottom: 14),
                // color: colors.toast_background,
                //width: double.infinity,
                // height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'images/ic_notice.png',
                      fit: BoxFit.contain,
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 9),
                      child: Text(
                        "所属区域",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: textColor, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                height: 20,
                child: Text(
                  "北京市",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: textColor, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 1,
          color: dividerColor,
        )
      ],
    );
  }
}
/*
class horizontalWidgetState extends State<horizontalWidget>{
  @override
  Widget build(BuildContext context) {
    //
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          padding:
          EdgeInsets.only(left: 16, top: 14, right: 16, bottom: 14),
          color: mLayoutBackgroundColor,
          width: double.infinity,
          child: Stack(
            children: <Widget>[
              Container(
                //  padding: EdgeInsets.only(left: 16, top: 14, right: 16, bottom: 14),
                // color: colors.toast_background,
                //width: double.infinity,
                // height: 30,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Image.asset(
                      'images/ic_notice.png',
                      fit: BoxFit.contain,
                      width: 20,
                      height: 20,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 9),
                      child: Text(
                        "所属区域",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: colors.color_4F556A, fontSize: 15),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerRight,
                height: 20,
                child: Text(
                  "北京市",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: colors.color_4F556A, fontSize: 15),
                ),
              ),
            ],
          ),
        ),
        Divider(
          height: 1,
          color: colors.color_D0D0D0,
        )
      ],
    );
  }

}*/
