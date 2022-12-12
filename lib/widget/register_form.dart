import 'package:fltterapi/utils/responsive.dart';
import 'package:fltterapi/widget/input_text.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatefulWidget {
  RegisterForm({Key? key}) : super(key: key);

  @override
  State<RegisterForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<RegisterForm> {
  GlobalKey<FormState> _formkey = GlobalKey();
  String _email = '', _password = '', _username = '';
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
                label: 'NOMBRE DE USUARIO',
                fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
                onChange: (text) {
                  _username = text;
                },
                validator: (text) {
                  if (text!.trim().length < 5) {
                    return 'Invalid username';
                  }
                  return null;
                },
              ),
              SizedBox(
                height: responsive.dp(2),
              ),
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
              InputText(
                keboardType: TextInputType.text,
                label: 'CONTRASEÑA',
                fontSize: responsive.dp(responsive.isTablet ? 1.2 : 1.4),
                onChange: (text) {
                  _password = text;
                },
                validator: (text) {
                  if (text!.trim().length < 8) {
                    return 'Invalid password';
                  }
                  return null;
                },
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
                    'Sign Up',
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
                    'Ya tienes una cuenta ?',
                    style: TextStyle(
                      fontSize: responsive.dp(1.5),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Sign In',
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
