import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';

//componentes

import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_icon_button.dart';

//controllers

import '../controllers/register_controller.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  RegisterController registerController = GetIt.I<RegisterController>();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.all(32),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            elevation: 16,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: Text("Tela de Cadastro"),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: CustomTextField(
                        hint: 'Nome',
                        //  errorText: "teste",
                        textInputType: TextInputType.emailAddress,
                        onChanged: registerController.setName,
                        enabled: true,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: CustomTextField(
                        hint: 'Sobrenome',
                        //  errorText: "teste",

                        textInputType: TextInputType.emailAddress,
                        onChanged: registerController.setLastName,
                        enabled: true,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: CustomTextField(
                        hint: 'Idade',
                        //  errorText: "teste",
                        textInputType: TextInputType.number,
                        onChanged: registerController.setAge,
                        enabled: true,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: CustomTextField(
                        obscure: true,
                        hint: 'Senha',
                        suffix: CustomIconButton(
                          iconData: Icons.visibility,
                          onTap: () {},
                        ),
                        //  errorText: "teste",
                        textInputType: TextInputType.emailAddress,

                        onChanged: registerController.setPassword,
                        enabled: true,
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: CustomTextField(
                        obscure: true,
                        hint: 'Confirmar senha',
                        //  errorText: "teste",
                        textInputType: TextInputType.emailAddress,
                        onChanged: registerController.setRepeatPassword,
                        enabled: true,
                        suffix: CustomIconButton(
                          iconData: Icons.visibility,
                          onTap: () {},
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: CustomButton(
                        title: "Enviar",
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
