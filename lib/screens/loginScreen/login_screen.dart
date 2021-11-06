import 'package:devheat/screens/loginScreen/login_screen_widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          //TODO add context pop function on back arrow

        },
            icon: Icon(Icons.arrow_back_ios,color: Colors.black,size: 24,)
        ),
        title: Text('Login',style: TextStyle(color: Colors.black,fontSize: 24),),
        centerTitle: true,
        backgroundColor: CupertinoColors.systemYellow,
        elevation: 0,
      ),
      backgroundColor: CupertinoColors.systemYellow,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          LoginTextField()
        ],
      ),
    );
  }
}
