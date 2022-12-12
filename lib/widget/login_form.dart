import 'package:fltterapi/utils/responsive.dart';
import 'package:fltterapi/widget/input_text.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> _formkey = GlobalKey();
  String _email = '', _password = '';
  _submit() {
    final isOk = _formkey.currentState?.validate();
    print('Form isOk $isOk');
    if (isOk!) {}
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Positioned(
      bottom: 30,
      // left: 20,
      // right: 20,
      child: Container(
        constraints: BoxConstraints(
          maxWidth: responsive.isTablet ? 430 : 340,
        ),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              InputText(
                keboardType: TextInputType.emailAddress,
                label: 'CORREO ELECTRÓNICO',
                fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
                onChange: (text) {
                  _email = text;
                },
                validator: (text) {
                  if (!text!.contains('@')) {
                    return 'Invalid email';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: responsive.dp(2),
              ),
              Container(
                decoration: const BoxDecoration(
                    border: Border(
                  bottom: BorderSide(
                    color: Colors.black12,
                  ),
                )),
                child: Row(children: [
                  Expanded(
                    child: InputText(
                      label: 'CONTRASEÑA',
                      obscureText: true,
                      borderEnable: false,
                      fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
                      onChange: (text) {
                        _password = text;
                      },
                      validator: (text) {
                        if (text!.trim().isEmpty) {
                          return 'Invalid Password';
                        }
                        return null;
                      },
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Olvido su Contraseña?',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: responsive.dp(1.4),
                      ),
                    ),
                  )
                ]),
              ),
              SizedBox(
                height: responsive.dp(5),
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                      padding:
                          EdgeInsets.symmetric(vertical: responsive.dp(2.2)),
                      backgroundColor: Colors.pinkAccent),
                  onPressed: _submit,
                  child: Text(
                    'Sign In',
                    style: TextStyle(
                        color: Colors.white, fontSize: responsive.dp(1.5)),
                  ),
                ),
              ),
              SizedBox(
                height: responsive.dp(2),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Nuevo en amigable Desi?',
                    style: TextStyle(
                      fontSize: responsive.dp(1.5),
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: responsive.dp(1.5),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: responsive.dp(10),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


// video 10 minuto 4:40