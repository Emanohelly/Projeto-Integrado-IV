import 'package:caririrh/components/auth_form.dart';
import 'package:flutter/material.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromRGBO(255, 255, 255, 1),
                  Color.fromRGBO(255, 255, 255, 1)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          Container(
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/icone-cariri-rh.png',
                    fit: BoxFit.fitWidth),
                Container(
                  child: Text('App de Recursos Humanos',
                      style: TextStyle(
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        color: Color.fromRGBO(8, 39, 119, 1),
                      )),
                ),
                SizedBox(height: 70), // 'gap' de 20px
                AuthForm(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
