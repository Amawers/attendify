import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/widgets/navbar_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isRememberMe = false;

// EMAIL SECTION

  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Email', //EMAIL HEADER
          style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Color(0xff101010),
                    blurRadius: 6,
                    offset: Offset(0, 2))
              ]),
          height: 60,
          child: const TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Color(0xff101010)), // FIXED THE COLORS
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(Icons.email, color: Color(0xff081631)),
                hintText: 'Ex. JuanDecario@gmail.com', // EMAIL PLACE HOLDER
                hintStyle: TextStyle(color: Color(0xffD3D3D3))),
          ),
        )
      ],
    );
  }

//INPUT PASSWORD

  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Text(
          'Password', //HEADER PASSWORD
          style: TextStyle(
              color: Color(0xffFFFFFF),
              fontSize: 16,
              fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
              color: const Color(0xffFFFFFF),
              borderRadius: BorderRadius.circular(10),
              boxShadow: const [
                BoxShadow(
                    color: Color(0xff101010),
                    blurRadius: 6,
                    offset: Offset(0, 2))
              ]),
          height: 60,
          child: const TextField(
            obscureText: true,
            style: TextStyle(color: Color(0xff101010)),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(Icons.lock, color: Color(0xff081631)),
                hintText: 'Ex.123****', // PLACEHOLDER PASSWORD
                hintStyle: TextStyle(color: Color(0xffD3D3D3))),
          ),
        )
      ],
    );
  }

// FORGOT PASSWORD

  Widget buildForgotPassBtn() {
    return Container(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 0),
        child: TextButton(
          // ignore: avoid_print
          onPressed: () => print("Forgot Password Pressed"),
          child: const Text(
            'Forgot Password?',
            style: TextStyle(
              color: Color(0xffFFFFFF),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  // REMEMBER PASSWORD
  Widget buildRememberCb() {
    return SizedBox(
      height: 20,
      child: Row(
        children: <Widget>[
          Theme(
            data: ThemeData(unselectedWidgetColor: const Color(0xffFFFFFF)),
            child: Checkbox(
              value: isRememberMe,
              checkColor: const Color(0xff081631), //CHECK MARK COLOR
              activeColor: const Color(0xffFFFFFF), // BOX OF THE CHECK MARK
              onChanged: (value) {
                setState(() {
                  isRememberMe = value!;
                });
              },
            ),
          ),
          const Text(
            'Remember me',
            style: TextStyle(
                color: Color(0xffFFFFFF), fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

  // LOGIN BUTTON
  Widget buildLoginBtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {
          // Add code to navigate to NavBar when the login button is clicked.
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const NavBar(),
            ),
          );
        },
        style: ElevatedButton.styleFrom(
          elevation: 5, backgroundColor: const Color(0xffFFFFFF),
          padding: const EdgeInsets.all(15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ), // Button background color
        ),
        child: const Text(
          'LOGIN',
          style: TextStyle(
            color: Color(0xff081631),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

// SIGN UP BUTTON
  Widget buildSignUpBtn() {
    return GestureDetector(
      // ignore: avoid_print
      onTap: () => print("Sign Up Pressed"),
      child: RichText(
        text: const TextSpan(children: [
          TextSpan(
              text: 'Don\'t have an Account?',
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 18,
                  fontWeight: FontWeight.w500)),
          TextSpan(
              text: 'Sign Up',
              style: TextStyle(
                  color: Color(0xffFFFFFF),
                  fontSize: 18,
                  fontWeight: FontWeight.bold))
        ]),
      ),
    );
  }

  // BODY SA LOG IN
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
                    gradient: LinearGradient(
                  begin: Alignment.topCenter, // STILL CONFUSE ABOUT THIS
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xff081631), // BACKGROUND COLORS
                    Color(0xff081631),
                    Color(0xff081631),
                    Color(0xff081631),
                  ],
                )),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 25, vertical: 120),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Sign In',
                        style: TextStyle(
                            color: Color(0xffFFFFFF),
                            fontSize: 40,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 50),
                      buildEmail(),
                      const SizedBox(height: 20),
                      buildPassword(),
                      buildForgotPassBtn(),
                      buildRememberCb(),
                      buildLoginBtn(),
                      buildSignUpBtn(),
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
