import 'package:Skill_Quest/main.dart';
import 'package:Skill_Quest/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.2,
        backgroundColor: Colors.black87,
      ),
      backgroundColor: Colors.black87,
      body: Container(
        color: Colors.black87,
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: ((MediaQuery.of(context).size.height) - 88) / 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                verticalDirection: VerticalDirection.down,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    child: Image.asset(
                      "assets/images/logo_transparent.png",
                      height: 200,
                      width: 200,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: ((MediaQuery.of(context).size.height) - 88) / 2,
              decoration: const BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'LOGIN',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // To be filled with google login logic
                      AuthService().signInWithGoogle();
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.black87,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(25),
                        ),
                        border: Border.all(
                          width: 2,
                          color: kPrimaryColor,
                        ),
                      ),
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      margin: const EdgeInsets.only(
                        left: 50,
                        right: 50,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/images/google.svg",
                            height: 20,
                            width: 20,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Center(
                            child: Text(
                              'Login with Google',
                              style: TextStyle(
                                color: kPrimaryColor,
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
