import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:flutterapp/SecondPage.dart';
import 'package:flutterapp/first.dart';
void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
   /*  //随机生成函数
      var wordPair = new WordPair.random();
    return new MaterialApp(
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Center(child :new Text("Weclome to Flutter")),

        ),
        body: new Center(
//          child: new Text(wordPair.asPascalCase),
            child: new RandomWordsWidget(),
        ),
      ),
    );*/
   return new MaterialApp(home: new RandomWordsWidget(),color: Colors.black,title: "Demo",);
  }
}

class RandomWordsWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new RandomWordState();
}
}

class RandomWordState extends State<RandomWordsWidget>{
  final _normalWords = <WordPair>[];
  // 存放收藏后的单词
  final Set<WordPair> _collected = new Set<WordPair>();
  @override
  Widget build(BuildContext context) {
    //随机生成函数
   /* var wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase,);*/

   void _pushFirst(){
     //路由跳转first页面
     Navigator.push(context,MaterialPageRoute(builder: (context){
       return first();
     }));
   }

   void _pushSeondPage(){
     //路由跳转Seond页面
     Navigator.push(context,MaterialPageRoute(builder: (context){
       return SecondPage();
     }));
   }

    //跳转新页面
    void _collectWordsPage(){
      Navigator.of(context).push(
        new  MaterialPageRoute<void>(
          builder: (BuildContext context){
            //传递收藏后的单词
            final Iterable<ListTile> tiles=_collected.map((WordPair pair){
              return new ListTile(
                title:new Text(
                    pair.asPascalCase
                ),
              );
            },
            );
            // 添加分割线
            final List<Widget> divided = ListTile.divideTiles(tiles: tiles,context: context).toList();
            return new Scaffold(
              appBar: new AppBar(
                titleSpacing: 0.0,
                 //MaterialPageRoute这个自带了返回键 下面的属性设置取消返回键
                automaticallyImplyLeading:false,
                title: new Container(decoration:new BoxDecoration(color: new Color(0xffff0000),),
                   child: new Stack(children: <Widget>[
                     new Container(
                       //左边位置
                       alignment: Alignment.centerLeft,
                       child: new IconButton(icon: new Icon(Icons.arrow_back),
                           // 点击事件
                           onPressed:(){
                             Navigator.pop(context);
                           } ),

                     ),
                     new Center(child: new Text("我的收藏",style: new TextStyle(color: Colors.black,fontSize: 18),),),
                   ],),
                )

//                  title: new Center(child: new Text("我的收藏"),)),
//              body: new ListView(children: divided),
            ),
                body: new ListView(children: divided)
            );

          },
        ),
      );
    }

   return new Scaffold(
     appBar: new AppBar(title: new Center(child :new Text("nidaye")),
       // 增加图标和点击事件动作 Icons.list是icon的类型 onPressed添加点击事件 点击会执行_collectWordsPage方法
      actions: <Widget>[
        new IconButton(icon: new Icon(Icons.list), onPressed: _pushSeondPage)
      ],
     ),
    body: _buildNormalWords(),
   );

  }
//创建填充单词的ListView
  Widget _buildNormalWords(){
    // 上下16dp
    return new ListView.builder(padding: new EdgeInsets.fromLTRB(0, 16, 16, 0),itemBuilder: (context,i){
      //添加分割线
      //奇数行，会添加一个分割线的widget，分割上下单词
      //偶数行，就正常构造添加ListTitle row
      //构造一像素的分割线 也可以自己去定义宽高
      //i.isOdd判断是否奇数，奇数行添加分割线
      if(i.isOdd){
        //注意：这里执行后会跳出循环
        return new Divider(height: 5,);
      }

      //这里对2求商，就是计算出ListView中减去分割线后的实际单词数量
      //如 i为 1，2，3，4，5，那么商结果是0，1，1，2，2
      //1 除以 2商是0 2除以2商是1 以此类推
      final int index = i~/2;
      //首先创建10条单词
      if (index >= _normalWords.length) {
        //接着再生成10个单词，添加到列表上
        _normalWords.addAll(generateWordPairs().take(10));
      }
      return _buildNormalItem(_normalWords[index]);
    });
  }

  //设置每个item项的内容和样式
  Widget _buildNormalItem(WordPair wordPair){
    final bool isCollected = _collected.contains(wordPair);
    return new ListTile(
      title: new Text(wordPair.asPascalCase,textAlign: TextAlign.center,),
      //trailing 是后置图标属性
      trailing: new Icon(isCollected?Icons.favorite:Icons.favorite_border,color: isCollected?Colors.red:null,),
      // item 点击事件
      onTap:(){
       //判断是否已经收藏
       if(isCollected){
          _collected.remove(wordPair);
       } else{
         _collected.add(wordPair);
       }
       setState(() {
       });
    },

    );
  }
}