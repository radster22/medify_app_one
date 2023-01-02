import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class HomePage extends StatefulWidget{

  @override
  _HomePageState createState() => _HomePageState();
}



class _HomePageState extends State<HomePage> {

  bool isRememberMe = false;

  Widget buildProfile() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10),
      width: 60,
      child: MaterialButton(
        elevation: 5,
        onPressed: () => print('Settings Pressed'),
        padding: EdgeInsets.all(15),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        color: Color(0xff488AAF),
        child: const Icon(
          Icons.settings,
          color: Colors.white60,
          ),
        ),
      );
    /*  return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [


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
                    offset: Offset(0, 2)
                )
              ]
          ),
          height: 60,
          width: 60,
          child: Container(

            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(

            ),
            child: Icon(
              Icons.settings,
              color: Colors.white60,
            ),
          ),
        )
      ],
    );  */
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: true,
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
                      fit: BoxFit
                          .cover, //TODO: The complete screen is not covered, space left at bottom
                    )
                ),

                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 10
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                       // Padding(padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          children: [
                            Text('This is,',
                              style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 20, color: Color(0xcc4165C1)),),
                            SizedBox(height: 8),
                            Text('MEDIFY'
                              , style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 26, color: Color(0xcc4165C1)),),
                          ],
                        ),

                      buildProfile(),

                    ],
                  ),

                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}



/* class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //todo
      body: SafeArea(
        child: Column(
        children: [
          //app bar

          Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  
                  //name
                  Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('This is,',
                      style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20, color: Colors.deepPurple[300]),),
                      SizedBox(height: 8),
                      Text('MEDIFY'
                      , style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 26, color: Colors.deepPurple[300]),)
              ],
          ),
                  //profile picture

                  Container(

                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[100],
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
              ],
            ),
          ),
          SizedBox(height: ,)
    ]
          //card -> how do you feel?

          //search bar

          //horizontal listview

        ),
      ),
    );
  }
}



*/