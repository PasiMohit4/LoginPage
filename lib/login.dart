
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:speakup/anmition/fadeanimation.dart';
import 'package:speakup/home.dart';
import 'package:speakup/signup.dart';






enum Gender{
  Email,
  password,
}

class MyLoginPage extends StatefulWidget {
  const MyLoginPage({Key? key}) : super(key: key);

  @override
  State<MyLoginPage> createState() => _MyLoginPageState();
}

class _MyLoginPageState extends State<MyLoginPage> {
  Color enabled = const Color(0xFF827F8A);
  Color enabledtxt = Colors.white;
  Color deaible = Colors.grey;
  Color backgroundColor = const Color(0xFF1F1A30);
  bool ispasswordev = true;
  Gender? selected;



  @override
  Widget build(BuildContext context) {
    var we = MediaQuery.of(context).size.width;
    var he = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color(0xFF1F1A30),
        body: SingleChildScrollView(
          child: Row(
            children: [
               Expanded(
            flex: 1,
            child: SizedBox(
              width: we,
              height: he,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    FadeAnimation(delay: 0.8,child:  Image(image: AssetImage('assets/login.png'),width: we * 0.9,height: he * 0.4,),),
                    FadeAnimation(
                      delay: 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 230.0),
                        child: Text("Login",style: GoogleFonts.heebo(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35,
                            letterSpacing: 2
                        ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: he * 0.01,
                    ),
                    FadeAnimation(
                      delay: 1,
                      child: Container(
                        margin: const EdgeInsets.only(right: 150.0),
                        child: Text("Please sign in to continue",style: GoogleFonts.heebo(
                            color: Colors.grey,
                            letterSpacing: 0.5
                        ),
                        ),

                      ),
                    ),
                    SizedBox(
                      height: he * 0.04,
                    ),
                    FadeAnimation(
                      delay: 1,
                      child: Container(
                        width: we * 0.9,
                        height:he * 0.071,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: selected == Gender.Email ?  enabled : backgroundColor,
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child:  TextField(
                          onTap: (){
                            setState(() {
                              selected = Gender.Email;
                            });
                          },
                          decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            border:InputBorder.none,
                            prefixIcon: Icon(Icons.email_outlined,color: selected == Gender.Email ? enabledtxt : deaible,),
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              color:  selected == Gender.Email ? enabledtxt : deaible,
                            ),
                          ),
                          style:  TextStyle(color:  selected == Gender.Email ? enabledtxt : deaible,fontWeight:FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: he * 0.02,
                    ),
                    FadeAnimation(
                      delay: 1,
                      child: Container(
                        width: we * 0.9,
                        height:he * 0.071,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: selected == Gender.password ? enabled : backgroundColor
                        ),
                        padding: const EdgeInsets.all(8.0),
                        child: TextField(
                          onTap: (){
                            setState(() {
                              selected = Gender.password;
                            });
                          },
                          decoration: InputDecoration(
                              enabledBorder: InputBorder.none,
                              border:InputBorder.none,
                              prefixIcon: Icon(Icons.lock_open_outlined,color: selected == Gender.password ? enabledtxt : deaible,),
                              suffixIcon: IconButton(
                                icon: ispasswordev ?  Icon(Icons.visibility_off,color: selected == Gender.password ? enabledtxt : deaible,): Icon(Icons.visibility,color: selected == Gender.password ? enabledtxt : deaible,) ,
                                onPressed: () => setState(() => ispasswordev = !ispasswordev ),
                              ),
                              hintText: 'Password',
                              hintStyle: TextStyle(
                                  color: selected == Gender.password ? enabledtxt : deaible
                              )
                          ),
                          obscureText: ispasswordev ,
                          style:  TextStyle(color: selected == Gender.password ? enabledtxt : deaible,fontWeight:FontWeight.bold),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: he * 0.02,
                    ),
                    FadeAnimation(
                      delay: 1,
                      child: TextButton(
                          onPressed: (){},
                          child: Text("Login",style: GoogleFonts.heebo(
                            color: Colors.black,
                            letterSpacing: 0.5,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),),
                          style:  TextButton.styleFrom(
                              backgroundColor: const Color(0xFF0DF5E4),
                              padding: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 80),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30.0)
                              )
                          )
                      ),
                    ),
                    SizedBox(
                      height: he * 0.01,
                    ),
                    FadeAnimation(
                      delay: 1,
                      child: Text("Forgot password?",style: GoogleFonts.heebo(
                        color:  const Color(0xFF0DF5E4).withOpacity(0.9),
                        letterSpacing: 0.5,
                      )),
                    ),
                    SizedBox(
                        height: he * 0.09
                    ),
                    FadeAnimation(
                      delay: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:  [
                          Text("Don't have an account?",style: GoogleFonts.heebo(
                            color:   Colors.grey,
                            letterSpacing: 0.5,
                          )),
                          GestureDetector(
                            onTap: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context){
                                return Singup();
                              }
                              ));
                            },
                            child: Text("Sign up",style: GoogleFonts.heebo(
                              color:  const Color(0xFF0DF5E4).withOpacity(0.9),
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.5,
                            )),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
            ],
          ),
        )
    );
  }
}