import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram',
      debugShowCheckedModeBanner: false,//отключаем надпись
      theme: ThemeData(
          primaryColor: Colors.white
      ),
      home:Scaffold(
        appBar: AppBar(title: Text('Instagram',style: TextStyle(fontStyle: FontStyle.italic),),centerTitle: true,),
        body: Column(
          children: <Widget>[
            Expanded(
              child: ListView(
                children: <Widget>[
                  topbar,image,likebar,post,topbar2,image2,likebar,post2],
              ),
            )
          ],
        )

      ),

    );

  }

}





var topbar =  Container(
    padding: const EdgeInsets.only(top:15,bottom: 5),
  child: Row(
    children: <Widget>[
   Expanded(
    child: Image.network('https://static2.clutch.co/s3fs-public/logos/4a474a4390140477d234980b28132da4.png?4xLHg6RT.iCbOu6hmYIQ39rTxGG_jRqF',
    height: 40.0,
    fit: BoxFit.scaleDown,)
    ),
     Expanded(flex: 5,
      child: Text('griddynamics_ua', style: TextStyle(height: 1, fontSize: 15, fontWeight: FontWeight.bold),),),
    Expanded(
     child: Image.network('https://image.flaticon.com/icons/png/512/64/64576.png',
      height: 25.0,
      fit: BoxFit.scaleDown,),
     ),
     ],
  ));


  var image = Row(
    children: <Widget>[
      Expanded(
        child: Image.network('https://s.dou.ua/CACHE/images/img/events/workshop_flutter_banner_fb/220bd8536befe52b9ee6964fb0b7ddbb.png',
          fit: BoxFit.scaleDown)
      )
    ],
  );


  var likebar = Container(
      padding: const EdgeInsets.only(left: 10),
    child: Row(
    children: <Widget>[
      Expanded(flex: -1,child: IconButton(icon: Icon(CupertinoIcons.heart,size: 30,))),
      Expanded(flex:-1,child: IconButton(icon: Icon(CupertinoIcons.conversation_bubble,size: 30))),
      Expanded(flex:-1,child: IconButton(icon: Icon(Icons.send,size: 25))),
      Expanded(child: const SizedBox(width: 100,)),
      Expanded(child: const SizedBox(width: 100,)),
      Expanded(flex:-1,child:IconButton(icon: Icon(Icons.bookmark_border,size: 30,)))
    ],
  ));

var post = Container(
    padding: const EdgeInsets.only(left: 15,right: 15),
  child: Row(
    children: <Widget>[
      Expanded(child: const Text.rich(
       TextSpan(
         // default text style
         children: <TextSpan>[
           TextSpan(text: "Нравится: 58\n",style: TextStyle(fontWeight: FontWeight.bold, height: 1.5)),
           TextSpan(text: 'griddynamics_ua ', style: TextStyle(fontWeight: FontWeight.bold)),
           TextSpan(text:"📢 Welcome to the Flutter workshop from  Grid Dynamics. In this course, you will learn how to create  Flutter applications efficiently and simply, as every lecture   comes with a full coding screencast and broadcasting code on a laptop."
             "We are updating this course frequently, as flutter and dart are in their early stages of development."
             "So what are you waiting for? 📆 The first class will be on January 20. \n 📌 More info and registration are on our bio.\n",style: TextStyle(fontWeight: FontWeight.normal)),
           TextSpan(text: '.\n', style: TextStyle(fontWeight: FontWeight.normal)),
           TextSpan(text: '#griddynamics_kharkiv #itkharkov #flutter #workshop\n', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.lightBlue)),
           TextSpan(text: ' 28 ноября 2019 г.•', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey, height: 3, fontSize: 12)),
           TextSpan(text: ' Показать переврод', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black, height: 3, fontSize: 12)),
         ],
         ),
         ),
         )
         ],
  ));


var topbar2 = Container(
    padding: const EdgeInsets.only(top:15,bottom: 5),
    child: Row(
      children: <Widget>[
        Expanded(
            child: Image.network('https://cdn.dribbble.com/users/17559/screenshots/6664357/figma.png',
              height: 40.0,
              fit: BoxFit.scaleDown,)
        ),
        Expanded(flex: 5,
          child: Text('Flutter_ua', style: TextStyle(height: 1, fontSize: 15, fontWeight: FontWeight.bold),),),
        Expanded(
          child: Image.network('https://image.flaticon.com/icons/png/512/64/64576.png',
            height: 25.0,
            fit: BoxFit.scaleDown,),
        ),
      ],
    ));

var image2 = Row(
  children: <Widget>[
    Expanded(
        child: Image.network('https://habrastorage.org/getpro/habr/post_images/c0e/eb8/453/c0eeb84536d4a276ccf02d1fab866f3c.jpg',
            fit: BoxFit.scaleDown)
    )
  ],
);

var post2 = Container(
    padding: const EdgeInsets.only(left: 15,right: 15),
    child: Row(
      children: <Widget>[
        Expanded(child: const Text.rich(
          TextSpan(
            // default text style
            children: <TextSpan>[
              TextSpan(text: "Нравится: 419\n",style: TextStyle(fontWeight: FontWeight.bold, height: 1.5)),
              TextSpan(text: 'Flutter_ua ', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text:"Чтобы быстро выучить Flutter каждый раз нужно всего лишь ",style: TextStyle(fontWeight: FontWeight.normal)),
              TextSpan(text: '... ещё\n', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey)),
              TextSpan(text: '.\n', style: TextStyle(fontWeight: FontWeight.normal)),
              TextSpan(text: '#google #flutter #learn\n', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.lightBlue)),
              TextSpan(text: ' 20 ноября 2019 г.', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.grey, height: 3, fontSize: 12)),
              //TextSpan(text: ' Показать переврод', style: TextStyle(fontWeight: FontWeight.normal, color: Colors.black, height: 3, fontSize: 12)),
            ],
          ),
        ),
        )
      ],
    ));





