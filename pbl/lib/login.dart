// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// class loginpage extends StatefulWidget {
//   const loginpage({Key? key}) : super(key: key);
//
//   @override
//   State<loginpage> createState() => _loginpageState();
// }
//
// class _loginpageState extends State<loginpage> {
//   @override
//   Widget build(BuildContext context) {
//     String email = '', pass = '';
//     return Container(
//       decoration: BoxDecoration(
//           image: DecorationImage(
//               image: AssetImage('images/farm.jpg'), fit: BoxFit.cover)),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         body: Stack(
//           children: [
//             Container(),
//             Container(
//                 // padding: EdgeInsets.only(right: 35, top: 130),
//                 height: 400,
//                 alignment: Alignment.center,
//                 child: CircleAvatar(
//                   radius: 70,
//                   backgroundImage: AssetImage('images/logo.jpg'),
//                 )),
//             SingleChildScrollView(
//               child: Container(
//                 padding: EdgeInsets.only(
//                     top: MediaQuery.of(context).size.height * 0.5),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(left: 35, right: 35),
//                       child: Column(
//                         children: [
//                           TextField(
//                             style: TextStyle(color: Colors.black),
//                             onChanged: (value) {
//                               email = value;
//                             },
//                             decoration: InputDecoration(
//                                 fillColor: Colors.grey.shade100,
//                                 filled: true,
//                                 hintText: "Email",
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 )),
//                           ),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           TextField(
//                             style: TextStyle(),
//                             obscureText: true,
//                             onChanged: (value) {
//                               pass = value;
//                             },
//                             decoration: InputDecoration(
//                                 fillColor: Colors.grey.shade100,
//                                 filled: true,
//                                 hintText: "Password",
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 )),
//                           ),
//                           SizedBox(
//                             height: 40,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               Text(
//                                 'Sign in',
//                                 style: TextStyle(
//                                   fontSize: 27,
//                                   fontWeight: FontWeight.w700,
//                                   color: Colors.white,
//                                 ),
//                               ),
//                               CircleAvatar(
//                                 radius: 30,
//                                 backgroundColor: Color(0xff4c505b),
//                                 child: IconButton(
//                                     color: Colors.white,
//                                     onPressed: () async {
//                                       try {
//                                         UserCredential userCredential =
//                                             await FirebaseAuth.instance
//                                                 .signInWithEmailAndPassword(
//                                                     email: email,
//                                                     password: pass);
//                                         Navigator.pushNamed(context, 'home1');
//                                       } on FirebaseAuthException catch (e) {
//                                         if (e.code == 'user-not-found') {
//                                           print(
//                                               'No user found for that email.');
//                                         } else if (e.code == 'wrong-password') {
//                                           print(
//                                               'Wrong password provided for that user.');
//                                         }
//                                       }
//                                     },
//                                     icon: Icon(
//                                       Icons.arrow_forward,
//                                     )),
//                               )
//                             ],
//                           ),
//                           SizedBox(
//                             height: 40,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               TextButton(
//                                 onPressed: () {
//                                   Navigator.pushNamed(context, 'register');
//                                 },
//                                 child: Text(
//                                   'Sign Up',
//                                   textAlign: TextAlign.left,
//                                   style: TextStyle(
//                                       decoration: TextDecoration.underline,
//                                       color: Colors.white,
//                                       fontSize: 18),
//                                 ),
//                                 style: ButtonStyle(),
//                               ),
//                               TextButton(
//                                   onPressed: () {},
//                                   child: Text(
//                                     'Forgot Password',
//                                     style: TextStyle(
//                                       decoration: TextDecoration.underline,
//                                       color: Colors.white,
//                                       fontSize: 18,
//                                     ),
//                                   )),
//                             ],
//                           )
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class loginpage extends StatelessWidget {
  const loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String email = '', pass = '';
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Register'),
      // ),

      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/farm.jpg'), fit: BoxFit.cover),
            ),
          ),
          Container(
            height: 170,
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('images/logo.jpg'),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  Container(
                    margin: EdgeInsets.only(left: 35, right: 35),
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        // TextField(
                        //   style: TextStyle(color: Colors.black),
                        //   decoration: InputDecoration(
                        //       fillColor: Colors.grey.shade100,
                        //       filled: true,
                        //       hintText: "Name",
                        //       border: OutlineInputBorder(
                        //         borderRadius: BorderRadius.circular(10),
                        //       )),
                        // ),
                        SizedBox(
                          height: 40,
                        ),
                        TextField(
                          onChanged: (value) {
                            email = value;
                          },
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "Email",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        TextField(
                          onChanged: (value) {
                            pass = value;
                          },
                          obscureText: true,
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        ElevatedButton(
                            onPressed: () async {
                              try {
                                UserCredential userCredential =
                                    await FirebaseAuth.instance
                                        .signInWithEmailAndPassword(
                                            email: email, password: pass);
                                Navigator.pushNamed(context, 'home1');
                              } on FirebaseAuthException catch (e) {
                                if (e.code == 'user-not-found') {
                                  print('No user found for that email.');
                                } else if (e.code == 'wrong-password') {
                                  print(
                                      'Wrong password provided for that user.');
                                }
                              }
                            },
                            child: Text('Log In')),
                      ],
                    ),
                  ),
                ], // margin: EdgeInsets.only(left: 30, right: 30),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
