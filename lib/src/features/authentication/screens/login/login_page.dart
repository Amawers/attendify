import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:my_app/src/common_widgets/navbar_widget.dart';
import 'package:my_app/src/features/authentication/screens/login/widget/login_form_widget.dart';
import 'package:my_app/src/common_widgets/form/form_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
          child: const Column(
            children: [
              FormHeaderWidget(title: "Welcome", subTitle: "hello log in",),
              LoginForm()
            ],
          ),
        )),
      ),
    );
  }
}


  
  

//   @override
//   // ignore: library_private_types_in_public_api
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   bool isRememberMe = false;
//   bool showPassword = false;
//   TextEditingController passwordController = TextEditingController();

//   // Para sa email nga input field
//   Widget buildEmail() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Container(
//           alignment: Alignment.centerLeft,
//           decoration: BoxDecoration(
//             color: const Color(0xffFFFFFF),
//             borderRadius: BorderRadius.circular(30),
//             boxShadow: const [
//               BoxShadow(
//                 color: Color(0xff101010),
//                 blurRadius: 3,
//                 offset: Offset(0, 1),
//               ),
//             ],
//           ),
//           height: 40,
//           width: 260,
//           child: const TextField(
//             keyboardType: TextInputType.emailAddress,
//             style: TextStyle(color: Color(0xff101010)),
//             
//           ),
//         ),
//       ],
//     );
//   }

//   // Para sa password nga input field tas naay functionality na show password or not
//   Widget buildPassword() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: <Widget>[
//         Container(
//           alignment: Alignment.centerLeft,
//           decoration: BoxDecoration(
//             color: const Color(0xffFFFFFF),
//             borderRadius: BorderRadius.circular(30),
//             boxShadow: const [
//               BoxShadow(
//                 color: Color(0xff101010),
//                 blurRadius: 3,
//                 offset: Offset(0, 1),
//               ),
//             ],
//           ),
//           height: 40,
//           width: 260,
//           child: TextFormField(
//             controller: passwordController,
//             obscureText: !showPassword,
//             style: TextStyle(color: Color(0xff101010)),
//             
//           ),
//         ),
//       ],
//     );
//   }

//   // Para sa forgot password na hypertext
//   Widget buildForgotPassBtn() {
//     return Container(
//       margin: EdgeInsets.only(right: 20),
//       alignment: Alignment.centerRight,
//       child: Padding(
//         padding: const EdgeInsets.only(right: 0),
//         child: TextButton(
//           // Wala pagyud siyay logic for forgot password, placeholder lang sa
//           onPressed: () => print("Forgot Password Pressed"),
//           child: const Text(
//             'Forgot Password?',
//             style: TextStyle(
//               color: Color(0xff081631),
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   /* Para sa katong remember me para mo automatically input ang
//   credentials ni sa last user pero wala pagyud siyay logic*/
//   Widget buildRememberCb() {
//     return Container(
//       margin: EdgeInsets.only(left: 20),
//       child: SizedBox(
//         height: 20,
//         child: Row(
//           children: <Widget>[
//             Theme(
//               data: ThemeData(unselectedWidgetColor: Color(0xff081631)),
//               child: Checkbox(
//                 value: isRememberMe,
//                 checkColor: const Color(0xff081631),
//                 activeColor: const Color(0xffFFFFFF),
//                 onChanged: (value) {
//                   setState(() {
//                     isRememberMe = value!;
//                   });
//                 },
//               ),
//             ),
//             const Text(
//               'Remember me',
//               style: TextStyle(
//                 color: Color(0xff081631),
//                 fontWeight: FontWeight.bold,
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   // Para sa Log In button
//   Widget buildLoginBtn() {
//     return Container(
//       padding: const EdgeInsets.symmetric(vertical: 25),
//       width: 260,
//       child: ElevatedButton(
//         onPressed: () {
//           /* Navigate dayun sa initial na screen which is dashboard
//           wala pa siyay logic para mo check if sakto ba credentials*/
//           Navigator.of(context).push(
//             MaterialPageRoute(
//               builder: (context) => const NavBar(),
//             ),
//           );
//         },
//         style: ElevatedButton.styleFrom(
//           elevation: 5,
//           backgroundColor: Color(0xff081631),
//           padding: const EdgeInsets.all(10),
//           shape: RoundedRectangleBorder(
//             borderRadius: BorderRadius.circular(15),
//           ),
//         ),
//         child: const Text(
//           'Log In',
//           style: TextStyle(
//             color: Color.fromARGB(255, 255, 255, 255),
//             fontSize: 16,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//       ),
//     );
//   }

//   // Para sa sign up na hyper text, wala pa gyapoy functionality
//   Widget buildSignUpBtn() {
//     return GestureDetector(
//       // ignore: avoid_print
//       onTap: () => print("Sign Up Pressed"),
//       child: RichText(
//         text: const TextSpan(children: [
//           TextSpan(
//             text: "Don't have an Account?  ",
//             style: TextStyle(
//               color: Color.fromARGB(255, 0, 0, 0),
//               fontSize: 14,
//             ),
//           ),
//           TextSpan(
//             text: 'Sign Up',
//             style: TextStyle(
//               color: Color(0xff081631),
//               fontSize: 14,
//               fontWeight: FontWeight.w900,
//             ),
//           ),
//         ]),
//       ),
//     );
//   }

//   Form{

//   }
//   // Para pag handle/hold sa katong mga widgets
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: AnnotatedRegion<SystemUiOverlayStyle>(
//         value: SystemUiOverlayStyle.light,
//         child: GestureDetector(
//           child: Stack(
//             children: <Widget>[
//               Container(
//                 height: double.infinity,
//                 width: double.infinity,
//                 decoration: const BoxDecoration(
//                   gradient: LinearGradient(
//                     begin: Alignment.topCenter,
//                     end: Alignment.bottomCenter,
//                     colors: [
//                       Color.fromARGB(255, 255, 255, 255),
//                       Color.fromARGB(255, 255, 255, 255),
//                       Color.fromARGB(255, 255, 255, 255),
//                       Color.fromARGB(255, 255, 255, 255),
//                     ],
//                   ),
//                 ),
//                 child: SingleChildScrollView(
//                   physics: const AlwaysScrollableScrollPhysics(),
//                   padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 150),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: <Widget>[
//                       Image.asset('assets/images/logo.png', width: 200),
//                       buildEmail(),
//                       const SizedBox(height: 20),
//                       buildPassword(),
//                       buildForgotPassBtn(),
//                       buildRememberCb(),
//                       buildLoginBtn(),
//                       buildSignUpBtn(),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }