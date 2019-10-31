import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/clolrs/colors.dart';
import 'package:flutterapp/first.dart';
import 'package:flutterapp/visit_details_page.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'customwidgets/toastWidget.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SecondPage'),
      ),
      body:  Center(
          child:  Padding(
              padding: new EdgeInsets.only(top: 10.0),
              child: Column(
                //主轴居中,即是竖直向居中
                mainAxisAlignment: MainAxisAlignment.start,
                //大小按照最小显示
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  /*new Flexible(
                child: new Center(
                  child: new Text(
                    '学习Text',
                    textAlign: TextAlign.center, //文本对齐方式  居中
                    textDirection: TextDirection.ltr, //文本方向
                    softWrap: false, //是否自动换行 false文字不考虑容器大小  单行显示   超出；屏幕部分将默认截断处理
                    overflow: TextOverflow
                        .ellipsis, //文字超出屏幕之后的处理方式  TextOverflow.clip剪裁   TextOverflow.fade 渐隐  TextOverflow.ellipsis省略号
                    textScaleFactor: 2.0, //字体显示的赔率
                    maxLines: 10, //最大行数
                    style: new TextStyle(
                      decorationColor: const Color(0xffffffff), //线的颜色
                      decoration: TextDecoration
                          .none, //none无文字装饰   lineThrough删除线   overline文字上面显示线    underline文字下面显示线
                      decorationStyle: TextDecorationStyle
                          .solid, //文字装饰的风格  dashed,dotted虚线(简短间隔大小区分)  double三条线  solid两条线
                      wordSpacing: 0.0, //单词间隙(负值可以让单词更紧凑)
                      letterSpacing: 0.0, //字母间隙(负值可以让字母更紧凑)
                      fontStyle: FontStyle.italic, //文字样式，斜体和正常
                      fontSize: 20.0, //字体大小
                      fontWeight: FontWeight.w900, //字体粗细  粗体和正常
                      color: const Color(0xFF000000), //文字颜色
                    ),
                  ),
                ),
                flex: 1,
              ),*/

                  ///flex默认为1
                   Expanded(
                    child:  Text("新建页面3",
                        textAlign: TextAlign.center,
                        style:  TextStyle(
                            color: Colors.black,
                            fontSize: 14.0,
                            background:  Paint()..color = Colors.yellow),
                        maxLines: 1,
                        textDirection: TextDirection.rtl),
                    flex: 1,
                  ),
                   Expanded(
                      child: new Text(
                    "新建页面4",
                    maxLines: 1,
                    textDirection: TextDirection.ltr,
                  )),

                   Image(
                      image: new AssetImage('images/mine_normal.jpg'),
                      width: 60,
                      height: 40,
                      fit: BoxFit.contain),
                   Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: new Image.asset('images/mine_normal.jpg',
                          width: 60, height: 40, fit: BoxFit.contain)),

                  //new FadeInImage.memoryNetwork(placeholder:,image: 'lib/images/mine.jpg',width: 300,height: 200,fit:BoxFit.fill),
                   Padding(
                    padding: EdgeInsets.only(bottom: 10),
                    child: GestureDetector(
                      child: new FadeInImage.assetNetwork(
                          placeholder: 'images/mine.jpg',
                          image:
                              'http://img5.taoche.cn/00/2de3cf45-10190e93q8.jpg',
                          width: 60,
                          height: 40,
                          fit: BoxFit.fill),
                      onTap: () => onClick("first", context),
                      onDoubleTap: () => onDoubleClick("双击666"),
                    ),
                  ),
                  GestureDetector(
                    child: FadeInImage.assetNetwork(
                        placeholder: 'images/mine.jpg',
                        image:
                            'http://img5.taoche.cn/00/2de3cf45-10190e93q8.jpg',
                        width: 60,
                        height: 40,
                        fit: BoxFit.fill),
                    onTap: () => onClick("detail", context),
                  ),
                  // 实现圆角图片方式中的一种
                   ClipRRect(
                      child: FadeInImage.assetNetwork(
                          placeholder: 'images/mine.jpg',
                          image:
                              'http://img5.taoche.cn/00/2de3cf45-10190e93q8.jpg',
                          width: 60,
                          height: 40,
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10))),
                   Expanded(
                      child: new Text(
                    "新建页面5",
                    maxLines: 1,
                    textDirection: TextDirection.ltr,
                  )),
                ],
              ))),
      /*:Column(
        //主轴居中,即是竖直向居中
      mainAxisAlignment:MainAxisAlignment.start,
        //大小按照最小显示
      mainAxisSize : MainAxisSize.min,
      crossAxisAlignment : CrossAxisAlignment.start,
      children: <Widget>[
      ///flex默认为1
      new Expanded(child: new Text("1111"), flex: 1,),
      new Expanded(child: new Text("2222")),
    ],
      )*/

      /* SafeArea(
          child: RaisedButton(
              child: Text(" 我是第二个页面"),
              onPressed: () {
                //退出当前页面
                _backCurrentPage(context);
              })),*/
    );
  }

  void onClick(String message, BuildContext context) {
    // Fluttertoast.showToast(msg:message,toastLength:Toast.LENGTH_SHORT,gravity: ToastGravity.CENTER,textColor:colors.toast_background);
    toastWidget.toast(
      context,
      msg: message,
      showTime: 1000,
      bgColor: colors.toast_background,
      textColor: colors.white,
    );
    switch (message) {
      case "first":
        // 跳转到first  我的页面
        _pushFirst(context);
        break;
      case "detail":
        // 详情页面
        _pushMars(context);
        break;
    }
  }

  void onDoubleClick(String message) {
    Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        textColor: colors.toast_background);
  }

  void _backCurrentPage(BuildContext context) {
    Navigator.pop(context);
  }

  void _pushFirst(BuildContext context) {
    //路由跳转first页面
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return first();
    }));
  }

  void _pushMars(BuildContext context) {
    //路由跳转小马达拜访详情页面
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return VisitDetailsPage();
    }));
  }
}
