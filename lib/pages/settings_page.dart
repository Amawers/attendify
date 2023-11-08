import 'package:flutter/material.dart';
import 'package:my_app/core/notifiers.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF081631),
      appBar: AppBar(
        title: const Text('Settings'),
        backgroundColor: const Color(0xFF1C2C4B),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CenteredMarginContainer(margin: EdgeInsets.only(bottom: 50.0), text: 'Manage Account'),
          CenteredMarginContainer(margin: EdgeInsets.only(top: 30.0), text: 'Private Policy'),
          CenteredMarginContainer(margin: EdgeInsets.only(top: 30.0), text: 'Contact support'),
          CenteredMarginContainer(margin: EdgeInsets.only(top: 30.0), text: 'About App'),
          CenteredMarginContainer(margin: EdgeInsets.only(top: 80.0), text: 'Exit from the App'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isDarkNotifier.value = !isDarkNotifier.value;
        },
        child: const Icon(Icons.dark_mode),
      ),

    );
  }
}
//These lines declare two properties that can be set when creating an instance of the class, 
//allowing you to customize the appearance and content of the containers created from this class.
class CenteredMarginContainer extends  StatelessWidget{
   final EdgeInsets margin;
   final String text;
   
// This constructor allows you to create instances of the CenteredMarginContainer class 
//with specific values for the margin and text properties when you construct an object from this class.
  CenteredMarginContainer({required this.margin, required this.text});


  // Here we change the margins, Sizes, Radius, and colors of the Container
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: margin, // Margin on the top
        width: MediaQuery.of(context).size.width * 0.9, // 100% width
        height: MediaQuery.of(context).size.height * 0.08, // 10% height
        padding: EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Color.fromRGBO(28, 44, 75, 1), 
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ), // Custom border radius for a rectangular shape
        ),

        //The overall effect of this code is that it places an invisible clickable layer (the InkWell) over the Text widget, 
        //so the user can click on the container. When clicked, 
        //the onTap function of the InkWell can be used to trigger an action, such as handling the click event.
        child: Stack(
          children: <Widget>[
            Center(
              child: Text(
                text,
                style: const TextStyle(
                  color: Color.fromRGBO(252, 252, 252, 1),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned.fill(
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  onTap: () {},
                )
              )
            )
          ]
            
          ),
        ),
      
    );
        
  }
}
