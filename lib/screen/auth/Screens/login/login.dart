import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../first.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  double screenHeight = 0;
  double screenWidth = 0;
  Color primary = const Color(0xffeef444c);

  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;

    // return Scaffold(
    //   body: Background(
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         Container(
    //           alignment: Alignment.centerLeft,
    //           padding: const EdgeInsets.symmetric(horizontal: 40),
    //           child: const Text(
    //             "LOGIN",
    //             style: TextStyle(
    //                 fontWeight: FontWeight.bold,
    //                 color: Color(0xFFFA263F),
    //                 fontSize: 36),
    //             textAlign: TextAlign.left,
    //           ),
    //         ),
    //         SizedBox(height: size.height * 0.03),
    //         Container(
    //           alignment: Alignment.center,
    //           margin: const EdgeInsets.symmetric(horizontal: 40),
    //           child: const TextField(
    //             decoration: InputDecoration(labelText: "Username"),
    //           ),
    //         ),
    //         SizedBox(height: size.height * 0.03),
    //         Container(
    //           alignment: Alignment.center,
    //           margin: const EdgeInsets.symmetric(horizontal: 40),
    //           child: const TextField(
    //             decoration: InputDecoration(labelText: "Password"),
    //             obscureText: true,
    //           ),
    //         ),
    //         SizedBox(height: size.height * 0.05),
    //         Container(
    //           alignment: Alignment.centerRight,
    //           margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
    //           child: MaterialButton(
    //             onPressed: () {
    //               Get.to(const HomePage());
    //             },
    //             shape: RoundedRectangleBorder(
    //                 borderRadius: BorderRadius.circular(80.0)),
    //             textColor: Colors.white,
    //             padding: const EdgeInsets.all(0),
    //             child: Container(
    //               alignment: Alignment.center,
    //               height: 50.0,
    //               width: size.width * 0.5,
    //               decoration: BoxDecoration(
    //                   borderRadius: BorderRadius.circular(80.0),
    //                   gradient: const LinearGradient(colors: [
    //                     Color.fromARGB(255, 255, 136, 34),
    //                     Color.fromARGB(255, 255, 177, 41)
    //                   ])),
    //               padding: const EdgeInsets.all(0),
    //               child: const Text(
    //                 "LOGIN",
    //                 textAlign: TextAlign.center,
    //                 style: TextStyle(fontWeight: FontWeight.bold),
    //               ),
    //             ),
    //           ),
    //         ),
    //         Container(
    //           alignment: Alignment.centerRight,
    //           margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
    //           child: GestureDetector(
    //             onTap: () => {
    //               Navigator.push(
    //                   context,
    //                   MaterialPageRoute(
    //                       builder: (context) => const RegisterScreen()))
    //             },
    //             child: const Text(
    //               "Don't Have an Account? Sign up",
    //               style: TextStyle(
    //                   fontSize: 12,
    //                   fontWeight: FontWeight.bold,
    //                   color: Color(0xFF2661FA)),
    //             ),
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Container(
              height: screenHeight / 2.5,
              width: screenWidth,
              decoration: BoxDecoration(
                color: primary,
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(70),
                ),
              ),
              child: Center(
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                  size: screenWidth / 5,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: screenHeight / 15,
                bottom: screenHeight / 20,
              ),
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: screenWidth / 18,
                  fontFamily: "NexaBold",
                ),
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.symmetric(
                horizontal: screenWidth / 12,
              ),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    fieldTitle("Email"),
                    customField("Enter your email"),
                    fieldTitle("Password"),
                    customField("Enter your password"),
                    Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(
                          horizontal: 40, vertical: 10),
                      child: MaterialButton(
                        onPressed: () {
                          Get.to(const HomePage());
                        },
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80.0)),
                        textColor: Colors.white,
                        padding: const EdgeInsets.all(0),
                        child: Container(
                          alignment: Alignment.center,
                          height: 50.0,
                          width: size.width * 0.5,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(80.0),
                              gradient: const LinearGradient(colors: [
                                Color.fromARGB(255, 250, 38, 63),
                                Color.fromARGB(255, 218, 11, 17)
                              ])),
                          padding: const EdgeInsets.all(0),
                          child: const Text(
                            "LOGIN",
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      // Container(
                      // height: 60,
                      // width: screenWidth,
                      // margin: EdgeInsets.only(top: screenHeight / 40),
                      // decoration: BoxDecoration(
                      // color: primary,
                      // borderRadius: const BorderRadius.all(Radius.circular(30)),
                      // ),
                      // child: Center(
                      // child: Text(
                      // "LOGIN",
                      // style: TextStyle(
                      // fontFamily: "NexaBold",
                      // fontSize: screenWidth / 26,
                      // color: Colors.white,
                      // letterSpacing: 2,
                      // ),
                      // ),
                      // ),

                      //);

                      //},
                    ),
                  ]),
            ),
          ],
        ));
  }

  Widget fieldTitle(String title) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Text(
        title,
        style: TextStyle(
          fontSize: screenWidth / 26,
          fontFamily: "NexaBold",
        ),
      ),
    );
  }

  Widget customField(String hint) {
    return Container(
      width: screenWidth,
      margin: EdgeInsets.only(bottom: 12),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            offset: Offset(2, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: screenWidth / 6,
            child: Icon(
              Icons.person,
              color: primary,
              size: screenWidth / 15,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(right: screenWidth / 12),
              child: TextFormField(
                enableSuggestions: false,
                autocorrect: false,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(
                    vertical: screenHeight / 35,
                  ),
                  border: InputBorder.none,
                  hintText: hint,
                ),
                maxLines: 1,
              ),
            ),
          )
        ],
      ),
    );
  }
}
