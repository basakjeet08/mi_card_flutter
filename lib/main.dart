import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Scaffold Contains most of the Widgets like AppBar NavBar etc.
      home: Scaffold(

        // Setting the Background color of the App to teal
        backgroundColor: Colors.teal,

        // A safe Area Widget excludes the notification bar or the camera and notch etc so our widget
        // looks good
        body: SafeArea(

          // A column Widget keeps multiple child and keeps them in a single column like way one below another
          child: Column(

            // Overall alignment of the column can be set by main Alignment property
            mainAxisAlignment: MainAxisAlignment.center,

            // A column widget keeps an array of child in children
            children: <Widget>[

              // A circle Avatar Widget is basically a circle widget which keeps an Image like ProfilePic
              // After it crops the image in a circular shape
              const CircleAvatar(

                // A radius property which sets the Radius for the CircleAvatar
                radius: 50.0,

                // A background Color property for the circleAvatar Widget
                backgroundColor: Colors.red,

                // A background Image to set the Image of the Avatar using the AssetImage Widget
                backgroundImage: AssetImage('images/download.jpeg'),
              ),

              // Text Widget which is used to display normal Text files on the screen
              const Text(

                // Text to be Displayed
                'Anirban Basak',

                // We can customize the Text as we like using the TextStyle widget
                style: TextStyle(

                  // We can use the fontFamily property to change the font Family of our current Text
                  fontFamily: 'Pacifico',
                  fontSize: 30.0,
                  color: Colors.white,
                ),
              ),
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Source Sans Pro',
                  color: Colors.teal.shade100,
                  fontSize: 20.0,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),

              // A sized Box which is used to keep the Divider
              SizedBox(

                // Height and width of the SizedBox
                height: 20.0,
                width: 150.0,

                // A Divider is basically a horizontal line of 1px which will be drawn to the Screen
                child: Divider(

                  // Color attribute of the Divider horizontal line
                  color: Colors.teal.shade100,
                ),
              ),

              // It is basically a widget which have rounded Corner a bit of padding and a bit of elevation
              Card(
                color: Colors.white,

                //We can set the Margin of the card Widget using the EdgeInsects
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),

                // This widget is used add padding to the widgets which do
                // not have a padding property in their constructor
                // It basically overlaps around its child to make that padding effect
                child: Padding(
                  padding: const EdgeInsets.all(2.0),

                  // ListTile is a Widget which can have a leading Icon and a Text in it
                  child: ListTile(

                    // We use the Icon Image to show the necessary vector icons
                    leading: const Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+91 7478192996',
                      style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: const EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 25.0,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'anirbanBasak@gmail.com',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                        color: Colors.teal.shade900,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
