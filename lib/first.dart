import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp/clolrs/colors.dart';
import 'package:flutterapp/customwidgets/horizontalWidget.dart';
import 'package:fluttertoast/fluttertoast.dart';

class first extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return FirstState("你打野");
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Welcome to Flutter'),
        ),
        body: new Center(
          child: new Text('Hello World'),
        ),
      ),
    );
  }
}

class FirstState extends State<first> {
  String title;

  FirstState(String title) {
    this.title = title;
  }

  @override
  void initState() {
    // TODO: 初始化的时候调用
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO:
    return Scaffold(
      appBar: AppBar(
        title: Stack(
          children: <Widget>[
            Center(
              child: Text(
                "我的",
                style: new TextStyle(
                  color: colors.white,
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  decorationStyle: TextDecorationStyle.solid,
                ),
                textAlign: TextAlign.center,
                textDirection: TextDirection.ltr,
                softWrap: false,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            // 这层Positioned不用也行
            Positioned(
              //right: -10,top: 12,
              child: Container(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  child: new Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 15),
                        child: new Image(
                          image: new AssetImage('images/icon_message.png'),
                          width: 22,
                          height: 18,
                        ),
                      ),
                      new Positioned(
                        // width: 50,
                        left: 5,
                        top: -15,
                        child: Padding(
                          padding: EdgeInsets.all(5),
                          child: Center(
                            child: Container(
                                padding: EdgeInsets.fromLTRB(3, 0, 3, 0),
                                //  color: colors.toast_background,
                                child: Text(
                                  "99+",
                                  style: new TextStyle(
                                      color: colors.white,
                                      fontSize: 13,
                                      fontStyle: FontStyle.normal),
                                  textAlign: TextAlign.center,
                                ),
                                decoration: new BoxDecoration(
                                  color: colors.red,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(9.0)),
                                  border:
                                      Border.all(color: colors.white, width: 1),
                                )),
                          ),
                        ),
                      )
                    ],
                    overflow: Overflow.visible,
                  ),
                  onTap: () => onClickMessage("滴滴滴滴"),
                ),
              ),
            )
          ],
        ),
        backgroundColor: colors.color_66402,
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 127,
              color: colors.color_4F556A,
              child: Container(
                child: Stack(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Image.asset(
                        'images/ic_mine_default_head.png',
                        width: 74,
                        height: 74,
                      ),
                      margin: EdgeInsets.only(
                        left: 32,
                      ),
                    ),
                    Positioned(
                      left: 100,
                      top: 40,
                      // child: Center(
                      child: Container(
                        alignment: Alignment.center,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              title,
                              textDirection: TextDirection.ltr,
                              textAlign: TextAlign.left,
                              style: new TextStyle(
                                  color: colors.white,
                                  fontSize: 18,
                                  fontStyle: FontStyle.normal),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                top: 8,
                              ),
                              child: Text(
                                "评评评评估师",
                                textAlign: TextAlign.left,
                                style: new TextStyle(
                                    color: colors.white,
                                    fontSize: 15,
                                    fontStyle: FontStyle.normal),
                              ),
                            )
                          ],
                        ),
                        margin: EdgeInsets.only(
                          left: 23,
                        ),
                      ),
                      // ),
                    ),
                  ],
                ),
              ),
            ),
            /* Container(
              padding:
                  EdgeInsets.only(left: 16, top: 14, right: 16, bottom: 14),
              color: colors.white,
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'images/ic_notice.png',
                    fit: BoxFit.contain,
                    width: 30,
                    height: 30,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 9),
                    child: Text(
                      "所属区域",
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(color: colors.color_4F556A, fontSize: 15),
                    ),
                  ),
                  Container(
                      child: Text(
                    "北京市",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: colors.color_4F556A, fontSize: 15),
                  )),
                ],
              ),
            ),
            Divider(
              color: colors.color_D0D0D0,
              height: 1,
            ),*/
            // 所属区域
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(left: 16, top: 14, right: 16, bottom: 14),
                  color: colors.white,
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
            ),
            //联系方式
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(left: 16, top: 14, right: 16, bottom: 14),
                  color: colors.white,
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
                              'images/ic_phone.png',
                              fit: BoxFit.contain,
                              width: 20,
                              height: 20,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 9),
                              child: Text(
                                "联系方式",
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
                          "15858585858",
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
            ),
            //修改密码
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(left: 16, top: 14, right: 16, bottom: 14),
                  color: colors.white,
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
                              'images/ic_mine_change_pwd.png',
                              fit: BoxFit.contain,
                              width: 20,
                              height: 20,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 9),
                              child: Text(
                                "修改密码",
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
                        child: Image.asset(
                          'images/ic_mine_next.png',
                          fit: BoxFit.contain,
                          width: 20,
                          height: 20,
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
            ),
            //检测文档
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(left: 16, top: 14, right: 16, bottom: 14),
                  color: colors.white,
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
                              'images/icon_mine_question.png',
                              fit: BoxFit.contain,
                              width: 20,
                              height: 20,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 9),
                              child: Text(
                                "检测文档",
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
                        child: Image.asset(
                          'images/ic_mine_next.png',
                          fit: BoxFit.contain,
                          width: 20,
                          height: 20,
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
            ),
            //网络检测
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(left: 16, top: 14, right: 16, bottom: 14),
                  color: colors.white,
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
                              'images/icon_mine_net.png',
                              fit: BoxFit.contain,
                              width: 20,
                              height: 20,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 9),
                              child: Text(
                                "网络检测",
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
                        child: Image.asset(
                          'images/ic_mine_next.png',
                          fit: BoxFit.contain,
                          width: 20,
                          height: 20,
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
            ),
            // 检测更新
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding:
                      EdgeInsets.only(left: 16, top: 14, right: 16, bottom: 14),
                  color: colors.white,
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
                              'images/ic_mine_check_update.png',
                              fit: BoxFit.contain,
                              width: 20,
                              height: 20,
                            ),
                            Container(
                              margin: EdgeInsets.only(left: 9),
                              child: Text(
                                "检测更新",
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
                          "V5.8.8",
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
            ),
            horizontalWidget().build(colors.white, colors.color_4F556A, colors.color_D0D0D0),
            Container(
              child: RawMaterialButton(
                fillColor: colors.color_66402,
                child: Padding(padding: EdgeInsets.only(top: 10,bottom: 10),child:Text(
                  "退出登录",
                  style: TextStyle(
                      color: colors.white,
                      fontSize: 16,
                      fontStyle: FontStyle.normal),
                ) ,),
                elevation: 0,
                highlightElevation: 0,
                // 按钮水波纹颜色
                // splashColor: colors.color_transparent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3.0)),
                onPressed: () => _onPress(),
              ),
              width: double.infinity,
              margin: EdgeInsets.only(left:30,top: 20,right: 30,bottom: 40 ),
            )
          ],
        ),
      ),
    );
  }

  void _onPress() {
    setState(() {
      title="主管大爷";
    });
  }

  void onClickMessage(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        textColor: colors.white);
  }

  @override
  void dispose() {
    // TODO: 销毁只会调用一次
    super.dispose();
  }
}
