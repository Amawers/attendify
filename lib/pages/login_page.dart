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
  bool showPassword = false;
  TextEditingController passwordController = TextEditingController();

  // EMAIL SECTION
  Widget buildEmail() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Color(0xff101010),
                blurRadius: 3,
                offset: Offset(0, 1),
              ),
            ],
          ),
          height: 40,
          width: 260,
          child: const TextField(
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Color(0xff101010)),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.email, color: Color(0xff081631)),
              hintText: 'Email',
              hintStyle: TextStyle(color: Color(0xffD3D3D3)),
            ),
          ),
        ),
      ],
    );
  }

  // Password field with show password functionality
  Widget buildPassword() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: const Color(0xffFFFFFF),
            borderRadius: BorderRadius.circular(30),
            boxShadow: const [
              BoxShadow(
                color: Color(0xff101010),
                blurRadius: 3,
                offset: Offset(0, 1),
              ),
            ],
          ),
          height: 40,
          width: 260,
          child: TextFormField(
            controller: passwordController,
            obscureText: !showPassword,
            style: TextStyle(color: Color(0xff101010)),
            decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.lock, color: Color(0xff081631)),
              hintText: 'Password',
              hintStyle: TextStyle(color: Color(0xffD3D3D3)),
              suffixIcon: GestureDetector(
                onTap: () {
                  setState(() {
                    showPassword = !showPassword;
                  });
                },
                child: Icon(
                  showPassword ? Icons.visibility : Icons.visibility_off,
                  color: Color(0xff081631),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  // FORGOT PASSWORD
  Widget buildForgotPassBtn() {
    return Container(
      margin: EdgeInsets.only(right: 20), // Adjust the right margin as needed
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(right: 0),
        child: TextButton(
          onPressed: () => print("Forgot Password Pressed"),
          child: const Text(
            'Forgot Password?',
            style: TextStyle(
              color: Color(0xff081631),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }

  // REMEMBER PASSWORD
  Widget buildRememberCb() {
    return Container(
      margin: EdgeInsets.only(left: 20), // Adjust the left margin as needed
      child: SizedBox(
        height: 20,
        child: Row(
          children: <Widget>[
            Theme(
              data: ThemeData(unselectedWidgetColor: Color(0xff081631)),
              child: Checkbox(
                value: isRememberMe,
                checkColor: const Color(0xff081631),
                activeColor: const Color(0xffFFFFFF),
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
                color: Color(0xff081631),
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  // LOGIN BUTTON
  Widget buildLoginBtn() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 25),
      width: 260,
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
          elevation: 5,
          backgroundColor: Color(0xff081631),
          padding: const EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: const Text(
          'Log In',
          style: TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 16,
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
            text: "Don't have an Account?  ",
            style: TextStyle(
              color: Color.fromARGB(255, 0, 0, 0),
              fontSize: 14,
            ),
          ),
          TextSpan(
            text: 'Sign Up',
            style: TextStyle(
              color: Color(0xff081631),
              fontSize: 14,
              fontWeight: FontWeight.w900,
            ),
          ),
        ]),
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
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color.fromARGB(255, 255, 255, 255),
                      Color.fromARGB(255, 255, 255, 255),
                      Color.fromARGB(255, 255, 255, 255),
                      Color.fromARGB(255, 255, 255, 255),
                    ],
                  ),
                ),
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 150),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Image.asset('assets/images/logo.png', width: 200),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
