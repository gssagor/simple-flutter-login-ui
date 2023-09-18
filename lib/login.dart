import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScr extends StatefulWidget {
  const LoginScr({super.key});

  @override
  State<LoginScr> createState() => _LoginScrState();
}

class _LoginScrState extends State<LoginScr> {
  late Size size;
  bool _passwordVisible = false;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        setState(() {
          FocusScope.of(context).requestFocus(new FocusNode());
        });
      },
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        body: SafeArea(
          child: Container(
            height: size.height,
            width: size.width,
            color: Colors.white,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 90,
                  ),
                  Image.asset(
                    "asset/images/circle.png",
                    height: 100,
                    width: 200,
                    color: Color(0xffF2F2F2),
                    fit: BoxFit.contain,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Welcome Back",
                    style: TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w900,
                        decoration: TextDecoration.none,
                        color: Colors.black,
                        fontFamily: "CircularStd-Regular"),
                  ),
                  const Text(
                    "Sign to Continue",
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w900,
                        decoration: TextDecoration.none,
                        color: Color(0xffc9c9c9),
                        fontFamily: "CircularStd"),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  email(),
                  const SizedBox(
                    height: 25,
                  ),
                  password(),
                  const SizedBox(
                    height: 30,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40.0),
                        child: Text(
                          'Forgot Password?',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                              color: Color(0xff39BB75),
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 55,
                  ),
                  loginBtn(),
                  const SizedBox(
                    height: 25,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have  Account? ",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Create an Account",
                        style: TextStyle(
                            fontSize: 13,
                            color: Color(0xff39BB75),
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget email() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Container(
          height: 45,
          child: TextFormField(
            style: const TextStyle(
                fontSize: 16,
                color: Color(0xff39BB75),
                fontWeight: FontWeight.w700,
                fontFamily: 'CircularStd'),
            decoration: const InputDecoration(
              contentPadding: EdgeInsets.zero,
              border: OutlineInputBorder(borderSide: BorderSide.none),
              labelText: "Email",
              labelStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  fontFamily: "CircularStd"),
              prefixIcon: Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(
                  Icons.email_outlined,
                  color: Color(0xff39BB75),
                ),
              ),
              prefixIconConstraints: BoxConstraints(
                minWidth: 25,
                minHeight: 25,
              ),
            ),
          )),
    );
  }

  Widget password() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0),
      child: Container(
          height: 45,
          child: TextFormField(
            style: const TextStyle(
                fontSize: 16,
                color: Color(0xff39BB75),
                fontWeight: FontWeight.w700,
                fontFamily: 'CircularStd'),
            obscureText: !_passwordVisible,
            decoration: InputDecoration(
                contentPadding: EdgeInsets.zero,
                border: OutlineInputBorder(borderSide: BorderSide.none),
                labelText: "Password",
                labelStyle: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    fontFamily: "CircularStd"),
                prefixIcon: const Padding(
                  padding: EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.lock,
                    color: Color(0xff39BB75),
                  ),
                ),
                prefixIconConstraints: const BoxConstraints(
                  minWidth: 25,
                  minHeight: 25,
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _passwordVisible ? Icons.visibility : Icons.visibility_off,
                    color: Color(0xff39BB75),
                  ),
                  onPressed: () {
                    setState(() {
                      _passwordVisible = !_passwordVisible;
                    });
                  },
                )),
          )),
    );
  }

  Widget loginBtn() {
    return MaterialButton(
      onPressed: () {},
      minWidth: 300,
      height: 40,
      color: Color(0xff39BB75),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(5)),
      ),
      child: const Text(
        "Login",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
