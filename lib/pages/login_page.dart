import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget{

@override
  _LoginScreenState createState() => _LoginScreenState();
}



class _LoginScreenState extends State<LoginPage>{

  bool isRememberMe = false;

  Widget buildEmail(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[


        //To ADD TEXT NAME
        /*Text(
                'Email',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
                ),
              ),*/
        const SizedBox(height: 5),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0xff488AAF),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          //  width: 190,
          child: const TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(
                color: Colors.white70
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 15),
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: Colors.white60,
                ),
                hintText: 'Email',
                hintStyle: TextStyle(
                    color: Colors.white60
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildPassword(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[


        //To ADD TEXT NAME
        /*Text(
              'Password',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  fontWeight: FontWeight.bold
              ),
            ), */
        const SizedBox(height: 5),
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: const Color(0xff488AAF),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: Colors.black26,
                    blurRadius: 6,
                    offset: Offset(0,2)
                )
              ]
          ),
          height: 60,
          // width: 190,
          child: const TextField(
            obscureText: true,
            style: TextStyle(
                color: Colors.white70
            ),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 15),
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: Colors.white60,
                ),
                hintText: 'Password',
                hintStyle: TextStyle(
                    color: Colors.white60
                )
            ),
          ),
        )
      ],
    );
  }

  Widget buildForgotPassBtn(){
    return Container(
        alignment: Alignment.centerRight,
        child: TextButton(
          onPressed: () => print("Forgot Password pressed"),
          // padding: EdgeInsets.only(right: 0),
          child: const Text(
            'Forgot Password?',
            style: TextStyle(
                color: Colors.white60,
                fontWeight: FontWeight.bold
            ),
          ),
        )
    );
  }

  Widget buildRememberCb() {
    return Container(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: isRememberMe,
              checkColor: Color(0xff659AC1),
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  isRememberMe = value!;
                });
              },
            ),
          ),
          Text(
            'Remember me',
            style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold
            ),
          )
        ],
      ),
    );
  }

  Widget buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: MaterialButton(
        elevation: 5,
        onPressed: () => print('Login Pressed'),
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15)
        ),
        color: Colors.white,
        child: Text(
          'LOGIN',
          style: TextStyle(
            color: Color(0xff659AC1),
            fontSize: 18,
            fontWeight: FontWeight.bold
          ),
        ),
      ),
    );
  }

  Widget buildRegisterBtn(){
    return GestureDetector(
        onTap: () => print("Sign Up Pressed"),
        child: RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Don\'t have an Account?',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                )
              ),
              TextSpan(
                text: ' Sign Up',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                )
              )
            ]
          ),
        ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget>[
              Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'lib/pages/background.png'
                    ),
                    fit: BoxFit.cover,     //TODO: The complete screen is not covered, space left at bottom
                  )
                ),

                //This fills the screen wth color without background polygon
            /*   decoration: BoxDecoration(
                 gradient: LinearGradient(
                 begin: Alignment.topCenter,
                 end: Alignment.bottomCenter,
                 colors: [
                 Color(0xff659AC1),
                 Color(0xcc659AC1),
                 Color(0x99659AC1),
                 Color(0x66659AC1),
                ]
               )
              ),  */
                child: SingleChildScrollView(
                 // physics: AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 150
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[

                      const Padding(padding: EdgeInsets.all(10.0),
                  child: Text(                      //TODO: IF THIS SECTION SHOULD BE REMOVED?
                    'MEDIFY',
                    style: TextStyle(
                      color: Color(0xcc4165C1),
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                   ),
                      const Padding(padding: EdgeInsets.fromLTRB(0.0, 0.0, 10.0, 0.0),
                      child: Image(
                        image: AssetImage('lib/images/logoImage.png'),
                        width: 130,
                        height: 130,
                      ),),
                      SizedBox(height: 20),
                      buildEmail(),
                      SizedBox(height: 20),
                      buildPassword(),
                      buildForgotPassBtn(),
                      buildRememberCb(),
                      buildLoginBtn(),
                      buildRegisterBtn(),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}