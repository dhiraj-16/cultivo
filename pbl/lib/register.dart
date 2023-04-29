// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
//
// class MyRegister extends StatelessWidget {
//   const MyRegister({Key? key}) : super(key: key);
//   //
//   // @override
//   // _MyRegisterState createState() => _MyRegisterState();
// // }
//
// // class _MyRegisterState extends State<MyRegister> {
//   @override
//   Widget build(BuildContext context) {
//     String email = '', pass = '';
//     return Container(
//       decoration: BoxDecoration(
//         image: DecorationImage(
//             image: AssetImage('images/farm.jpg'), fit: BoxFit.cover),
//       ),
//       child: Scaffold(
//         backgroundColor: Colors.transparent,
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0,
//         ),
//         body: Stack(
//           children: [
//             Container(
//                 height: 170,
//                 alignment: Alignment.center,
//                 child: CircleAvatar(
//                   radius: 70,
//                   backgroundImage: AssetImage('images/logo.jpg'),
//                 )),
//             SingleChildScrollView(
//               child: Container(
//                 padding: EdgeInsets.only(
//                     top: MediaQuery.of(context).size.height * 0.28),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Container(
//                       margin: EdgeInsets.only(left: 35, right: 35),
//                       child: Column(
//                         children: [
//                           TextField(
//                             style: TextStyle(color: Colors.black),
//                             decoration: InputDecoration(
//                                 fillColor: Colors.grey.shade100,
//                                 filled: true,
//                                 hintText: "Name",
//                                 border: OutlineInputBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 )),
//                           ),
//                           SizedBox(
//                             height: 30,
//                           ),
//                           TextField(
//                             onChanged: (value) {
//                               email = value;
//                             },
//                             style: TextStyle(color: Colors.black),
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
//                             onChanged: (value) {
//                               pass = value;
//                             },
//                             style: TextStyle(color: Colors.black),
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
//                                 'Sign Up',
//                                 style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 27,
//                                     fontWeight: FontWeight.w700),
//                               ),
//                               ElevatedButton(
//                                   onPressed: () async {
//                                     try {
//                                       UserCredential userCredential =
//                                           await FirebaseAuth.instance
//                                               .createUserWithEmailAndPassword(
//                                                   email: email, password: pass);
//                                       Navigator.pushNamed(context, 'home');
//                                     } on FirebaseAuthException catch (e) {
//                                       if (e.code == 'weak-password') {
//                                         print(
//                                             'The password provided is too weak.');
//                                       } else if (e.code ==
//                                           'email-already-in-use') {
//                                         print(
//                                             'The account already exists for that email.');
//                                       }
//                                     } catch (e) {
//                                       print(e);
//                                     }
//                                   },
//                                   child: Text('Create')),
//                             ],
//                           ),
//                           SizedBox(
//                             height: 40,
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                             children: [
//                               TextButton(
//                                 onPressed: () {},
//                                 child: Text(
//                                   'Sign In',
//                                   textAlign: TextAlign.left,
//                                   style: TextStyle(
//                                       decoration: TextDecoration.underline,
//                                       color: Colors.white,
//                                       fontSize: 18),
//                                 ),
//                                 style: ButtonStyle(),
//                               ),
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

class MyRegister extends StatelessWidget {
  const MyRegister({Key? key}) : super(key: key);

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
                        TextField(
                          style: TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              fillColor: Colors.grey.shade100,
                              filled: true,
                              hintText: "Name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
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
                                        .createUserWithEmailAndPassword(
                                            email: email, password: pass);
                                Navigator.pushNamed(context, 'home');
                              } on FirebaseAuthException catch (e) {
                                if (e.code == 'weak-password') {
                                  print('The password provided is too weak.');
                                } else if (e.code == 'email-already-in-use') {
                                  print(
                                      'The account already exists for that email.');
                                }
                              } catch (e) {
                                print(e);
                              }
                            },
                            child: Text('Create')),
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
