import 'package:Skill_Quest/authentication/g_auth.dart';
import 'package:Skill_Quest/main.dart';
import 'package:Skill_Quest/view/pages/dashboard.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
        actions: [
          InkWell(
            onTap: () => {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Dashboard("This is Dashboard")))
            },
            child: Container(
              margin: EdgeInsets.only(right: 20),
              child: const Row(
                children: <Widget>[
                  Text(
                    'Skip',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  ),
                  Icon(
                    Icons.arrow_right_alt_sharp,
                    color: Colors.white,
                    size: 30,
                  )
                ],
              ),
            ),
          )
        ],
      ),
      backgroundColor: Colors.black87,
      body: Container(
        color: Colors.black87,
        child: Expanded(
          child: LayoutBuilder(
            builder: (context, constraints) {
              return Column(
                children: [
                  SizedBox(
                    width: constraints.maxWidth,
                    height: constraints.maxHeight / 2,
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
                    width: constraints.maxWidth,
                    height: constraints.maxHeight / 2,
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
                        )
                      ],
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
