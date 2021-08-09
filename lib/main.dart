import 'package:animatedicon/main.dart';
import 'package:flutter/material.dart';

void main()=>runApp(myApp());

class myApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animated App',
      home:myhomepage()
    );
  }

}

class myhomepage extends StatefulWidget{
  @override
  _myhomepage createState()=>_myhomepage();
}

class _myhomepage extends State<myhomepage> with SingleTickerProviderStateMixin{
  late AnimationController _animationController;
  bool isActive= false;
  @override
  void initState(){
    _animationController=AnimationController(
      vsync:this,
      duration:Duration(milliseconds: 200),
    );
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: Text(
            'Animated Icon',
        style: TextStyle(
            color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold
        ),),
      ),
      body:Center(
        child: IconButton(
          icon: AnimatedIcon(
            icon:AnimatedIcons.close_menu ,
            progress: _animationController,
          ),
              onPressed: (){
              setState(() {
                isActive=!isActive;
                isActive ? _animationController.forward():_animationController.reverse();
              }
              );
      }
        ),
      )
    );
  }
}