import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:phipros/inventoryscrees/homeScreen.dart';
import 'package:phipros/theme.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _key = GlobalKey<FormState>();

  var obsecuretextt = true;

  void togglepasswordd() {
    obsecuretextt = !obsecuretextt;
    setState(() {});
  }

  TextEditingController emailcontoller = TextEditingController();
  TextEditingController passwordcontller = TextEditingController();
  String password = "";
  String email = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
        const Positioned.fill(
          child: Image(
            image: AssetImage("assets/pic1.png"),
            fit: BoxFit.fill,
          ),
        ),
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height*0.2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "PHI",
                      style: GoogleFonts.quicksand(
                          fontWeight: FontWeight.bold, fontSize: 52),
                    ),
                    Text("POS",
                        style: GoogleFonts.quicksand(
                            fontSize: 52, fontWeight: FontWeight.w200))
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.height*0.06,),
                Form(
                  key: _key,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 37),
                        child: TextFormField(
                          style:quicksearch,
                          autofillHints: [AutofillHints.email],
                          controller: emailcontoller,
                          onChanged: (String value) {
                            email = value;
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'This field is required';
                            }
                            if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                              return "Please enter a valid email address";
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                              hintText: "email",
                              hintStyle:quicksearch
                                  ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 37),
                        child: TextFormField(
                          maxLength: 8,
                          style: quicksearch,
                          keyboardType: TextInputType.emailAddress,
                          obscureText: obsecuretextt,
                          controller: passwordcontller,
                          onChanged: (String value) {
                            password = value;
                          },
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter password";
                            }
                            if (value.length < 6) {
                              return "Password length should not be less then 6";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              suffixIcon: GestureDetector(
                                  onTap: () {
                                    togglepasswordd();
                                  },
                                  child: obsecuretextt
                                      ? const Icon(
                                          Icons.visibility_off,
                                          color: Colors.black,
                                        )
                                      : const Icon(
                                          Icons.visibility,
                                          color: Colors.black,
                                        )),
                              hintText: "password",
                              hintStyle:quicksearch),
                        ),
                      ),
                    ],
                  ),
                ),
                           SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Color.fromRGBO(72, 72, 72, 1),
                      ),
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          setState(() {});
                        }
                         if(emailcontoller.text.trim()=='' || passwordcontller.text.trim()==''){
                         return null;
                      
                         }
                         else{
                            Navigator.of(context).push(
                              MaterialPageRoute(builder: (context) {
                            return HomeScreen();
                          }));
                         }
                      },
                      child: const Text(
                        "Sign In",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              
                                     SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              
                const Text(
                  "-OR-",
                  style: TextStyle(
                      fontSize: 31,
                      fontWeight: FontWeight.w100,
                      color: Color.fromRGBO(112, 112, 112, 1)),
                ),
              
                           SizedBox(height: MediaQuery.of(context).size.height*0.03,),
              
               
              
              Container(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                                   colors: [
                                    Color.fromRGBO(119, 1, 185, 1),
                                     Color.fromRGBO(187, 0, 255, 1),
                           
              
                                      //add more colors
                                    ]),
                                  borderRadius: BorderRadius.circular(5),
                                  boxShadow: const <BoxShadow>[
                                    BoxShadow(
                                        color: Color.fromRGBO(0, 0, 0, 0.57), //shadow for button
                                        blurRadius: 5) //blur radius of shadow
                                  ]
                  ),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.transparent,
                                 onSurface: Colors.transparent,
                                 shadowColor: Colors.transparent,
                      ),
                      onPressed: () {
                        
                      },
                      child: const Text(
                        "Create new Account",
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      )),
                ),
              
              
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
