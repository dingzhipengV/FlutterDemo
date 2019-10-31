import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutterapp/clolrs/colors.dart';
import 'package:flutterapp/utils/time_util.dart';

/// 拜访详情
class VisitDetailsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => VisitDetailsPageState();

  // TODO 构造函数 具体传值待定
  VisitDetailsPage() {}
}

class VisitDetailsPageState extends State<VisitDetailsPage> {
  @override
  void initState() {
    // TODO: 应该调用接口
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
          ],
        ),
        backgroundColor: colors.color_66402,
        automaticallyImplyLeading: false,
      ),
      body: _buildBody(),
    );
  }

  ///
  Widget _buildBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
            width: double.infinity,
            color: colors.white,
            padding: EdgeInsets.only(left: 12, top: 10, right: 12, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "拜访人:",
                  style: TextStyle(color: colors.text_dark, fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
                Padding(padding: EdgeInsets.only(left: 5),child:Text(
                  "你打野",
                  style: TextStyle(color: colors.text_dark, fontSize: 15.0),
                  textAlign: TextAlign.center,
                ) ,),
              ],
            )),
        Divider(
          height: 1,
          color: colors.color_D0D0D0,
        ),
        Container(
            width: double.infinity,
            color: colors.white,
            padding: EdgeInsets.only(left: 12, top: 10, right: 12, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "拜访日期及时间:",
                  style: TextStyle(color: colors.text_dark, fontSize: 15.0),
                  textAlign: TextAlign.center,
                ) ,
                Padding(padding: EdgeInsets.only(left: 5),child:Text(
             /*TimeUtil.getDateTimeToLocalFormat(
                  "1572246545111",
                  DateFormat.YEAR_MONTH_DAY_HOUR_MINUTE,
                  '-',
                  ':'),*/
             TimeUtil.getDateStrByMs(1572246545111,format: DateFormat.YEAR_MONTH_DAY_HOUR_MINUTE),
              style: TextStyle(color: colors.text_dark, fontSize: 15.0),
              textAlign: TextAlign.center,
            ),),
              ],
            )),
        Divider(
          height: 1,
          color: colors.color_D0D0D0,
        ),
        Container(
            width: double.infinity,
            color: colors.white,
            padding: EdgeInsets.only(left: 12, top: 10, right: 12, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "车商名称:",
                  style: TextStyle(color: colors.text_dark, fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
            Padding(padding: EdgeInsets.only(left: 5),child:Text(
              "兄弟车行",
              style: TextStyle(color: colors.text_dark, fontSize: 15.0),
              textAlign: TextAlign.center,
            ),),
              ],
            )),
        Divider(
          height: 1,
          color: colors.color_D0D0D0,
        ),
        Container(
          width: double.infinity,
          color: colors.white,
          padding: EdgeInsets.only(left: 12, top: 10, right: 12, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                "拜访照片:",
                style: TextStyle(color: colors.text_dark, fontSize: 15.0),
                textAlign: TextAlign.center,
              ),
              Expanded(child:FadeInImage.assetNetwork(
                  width: 240,
                  height: 160,
                  placeholder: 'images/mine.jpg',
                  image: 'http://img5.taoche.cn/00/2de3cf45-10190e93q8.jpg',
                  fit: BoxFit.contain) ,flex: 1,),
            ],
          ),
        ),
        Divider(
          height: 1,
          color: colors.color_D0D0D0,
        ),
        Container(
            width: double.infinity,
            color: colors.white,
            padding: EdgeInsets.only(left: 12, top: 10, right: 12, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "定位:",
                  style: TextStyle(color: colors.text_dark, fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
                Expanded(
                    child:Padding(padding: EdgeInsets.only(left: 5),child:Text(
                      "北京市海淀区",
                      softWrap: true,
                      maxLines: 10,
                      style: TextStyle(color: colors.text_dark, fontSize: 15.0),
                    ),),),
                Center(
                  child: Image.asset(
                    'images/ic_mine_next.png',
                    fit: BoxFit.contain,
                    width: 20,
                    height: 20,
                  ),
                )
              ],
            )),
        Container(
          height: 5,
          color: colors.color_D0D0D0,
        ),
        Container(
            width: double.infinity,
            color: colors.white,
            padding: EdgeInsets.only(left: 12, top: 10, right: 12, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "拜访内容:",
                  style: TextStyle(color: colors.text_dark, fontSize: 15.0),
                  textAlign: TextAlign.center,
                ),
                Expanded(
                  child:Padding(padding: EdgeInsets.only(left: 5),child:Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.start,
                    spacing: 10,
                    runAlignment: WrapAlignment.start,
                    runSpacing: 10,
                    children: _generateWidgetList(),
                  ),),
                ),
              ],
            )),
        Container(
          height: 5,
          color: colors.color_D0D0D0,
        ),
      ],
    );
  }

  // TODO 接口返值
  List<String> _list = ["客情维护", "问题解答", "客情维护", "客情维护"];

//  List<String> _list = new List();

  List<Widget> _generateWidgetList() {
    //  return _list.map((item) => WrapItem(itemName: item)).toList();
    List<Widget> mList = new List();
    setState(() {});
    for (var value in _list) {
      mList.add(_getWarpItemWidget(
        itemName: value,
      ));
    }
    return mList;
  }

  _getWarpItemWidget({String itemName}) {
    return Container(
        padding: EdgeInsets.fromLTRB(8, 2, 8, 2),
        width: 80,
        child: Center(
          child: Text(
            itemName ?? "",
            style: new TextStyle(
                color: colors.color_000000,
                fontSize: 15,
                fontStyle: FontStyle.normal),
            textAlign: TextAlign.center,
          ),
        ),
        decoration: new BoxDecoration(
          color: colors.color_77A6FF,
          borderRadius: BorderRadius.all(Radius.circular(9.0)),
        ));
  }
}
