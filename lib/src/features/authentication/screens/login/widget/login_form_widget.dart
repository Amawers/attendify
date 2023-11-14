import 'package:flutter/material.dart';
import 'package:my_app/src/common_widgets/navbar_widget.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.email, color: Color(0xff081631)),
              hintText: 'Email',
              hintStyle: TextStyle(color: Color(0xffD3D3D3)),
            ),
          ),
          const SizedBox(height: 30),
          TextFormField(
            decoration: const InputDecoration(
              border: InputBorder.none,
              prefixIcon: Icon(Icons.lock, color: Color(0xff081631)),
              hintText: 'Password',
              hintStyle: TextStyle(color: Color(0xffD3D3D3)),
              suffixIcon: IconButton(
                onPressed: null,
                icon: Icon(Icons.visibility, color: Color(0xff081631)),

                // Logic para pag handle kung e show ba ang password or dili
                // onTap: () {
                // setState(() {
                //   showPassword = !showPassword;
                // });
                // },
                // child: Icon(
                // showPassword ? Icons.visibility : Icons.visibility_off,
                // color: Color(0xff081631),
                // ),
              ),
            ),
          ),
          const SizedBox(height: 30),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text(
                'Forgot Password?',
                style: TextStyle(
                  color: Color.fromARGB(255, 193, 0, 0),
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const NavBar(),
                    ),
                  );
                },
                child: const Text('Log In',
                    style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ))),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {},
              child: const Text.rich(TextSpan(
                  text: "Don't have an account?",
                  style: TextStyle(
                    color: Color.fromARGB(255, 193, 0, 0),
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: " Sign up",
                      style: TextStyle(
                        color: Color.fromARGB(255, 0, 193, 29),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ])),
            ),
          ),
        ],
      ),
    ));
  }
}
