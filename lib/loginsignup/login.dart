



import 'package:flutter/material.dart';
import 'package:w1n/costanti/coloriestili.dart';
import 'package:w1n/loginsignup/loginparts/background.dart';
import 'package:w1n/loginsignup/loginparts/inputwidgets.dart';
import 'package:w1n/loginsignup/loginparts/pulsanterettangolarearrotondato.dart';

class Login extends StatefulWidget {
  @override
  LoginState createState() {
    return LoginState();
  }

}

class LoginState extends State<Login>{


  TextEditingController emailcontroller = new TextEditingController();
  TextEditingController passwordcontroller = new TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomPadding: false,
        backgroundColor: Colors.white,
        body:
        GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              FocusScope.of(context).requestFocus(new FocusNode());
            },
            child:

            Stack(
              children: <Widget>[
                Background(),
                login(context),
              ],
            ))
    );
  }



  Widget login(BuildContext context) {

    return Column(

      children: <Widget>[

        // PADDING INIZIALE
        Padding(
          padding:
          EdgeInsets.only(top: MediaQuery
              .of(context)
              .size
              .height / 3.6),
        ),
        partecontextfields(),
        spazio(15),
        passworddimenticata(),
        spazio(15),
        accessoconsocial(),
        spazio(20),
        GestureDetector(
          onTap: () {
            // Navigator.of(context).push(MaterialPageRoute(builder: (context) => NuovoSignup()));
            Navigator.pushNamed(context, "/signup");
          },
          child: PulsanteRettangolareArrotondato(
              "Crea un Account", signInGradients, false),
        )
      ],

    );

  }





  Widget partecontextfields(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: MediaQuery
              .of(context)
              .size
              .width / 1.5, bottom: 10),
          child: Text(
            "Accedi",
            style: testosemplice16,
          ),
        ),
        Stack(
          alignment: Alignment.bottomRight,
          children: <Widget>[
            InputWidget(30.0, 0.0, "email@esempio.com", "password",
                emailcontroller, passwordcontroller),
            Padding(
                padding: EdgeInsets.only(right: 50),
                child: Row(
                  children: <Widget>[
                    Expanded(
                        child:

                        Padding(
                          padding: EdgeInsets.only(top: 40),
                          child:

                          Text(
                            'Inserisci le credenziali per continuare...',
                            textAlign: TextAlign.end,
                            style: testosemplice12,
                          ),

                        )


                    ),

                    GestureDetector(
                      onTap: risultatologin,
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: ShapeDecoration(
                          shape: CircleBorder(),
                          gradient: LinearGradient(
                              colors: signInGradients,
                              //      colors: signUpGradients,
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight),
                        ),
                        child: Icon(
                          Icons.arrow_forward,
                          size: 40,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                )),

          ],
        ),

      ],
    );
  }


  Widget spazio(double spazio){
    return Padding(
      padding: EdgeInsets.only(bottom: spazio),
    );
  }


  Widget passworddimenticata(){
    return Center(
        child: GestureDetector(
            onTap: (){
             // Navigator.of(context).push(MaterialPageRoute(builder: (c) => PasswordDimenticata(emailcorrente: emailcontroller.text,)));
            },
            child: Text("Password dimenticata?",
                style: testosemplice16)
        )
    );
  }

  Widget accessoconsocial(){
    return Column(
      children: <Widget>[
        Center(
            child: Text("Oppure accedi con",
                style: testosemplice16)
        ),
        spazio(15),
        Center(
          child:
          Row(
            children: <Widget>[
              Expanded(
                  child: Container()
              ),
              MaterialButton(
                child: Image.asset(
                  "assets/img/facebookicon.png", width: 50,),
                onPressed: (){
                //  loginwithfacebook();
                },

              ),
              MaterialButton(
                child: Image.asset("assets/img/ggg.png", width: 50,),

              ),
              Expanded(
                  child: Container()
              ),
            ],
          ),
        ),
      ],
    );
  }


  risultatologin(){}


}