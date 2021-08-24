import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';

//componentes

import '../widgets/custom_text_field.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_icon_button.dart';

//screens

import './login_screen.dart';

//controllers

import '../controllers/register_controller.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  RegisterController registerController = GetIt.I<RegisterController>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    autorun((_) {
      if(registerController.registerDone){
        Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => LoginScreen()));
      }
    });
  }

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
                    //########################################COMEÇA AQUI
                    Observer(builder: (_) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        child: CustomTextField(
                          hint: 'Nome',
                          errorText: registerController.nameError,
                          textInputType: TextInputType.emailAddress,
                          onChanged: registerController.setName,
                          enabled: !registerController.isLoading,
                        ),
                      );
                    }),
                    //########################################COMEÇA AQUI
                    Observer(builder: (_) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        child: CustomTextField(
                          hint: 'Sobrenome',
                          errorText: registerController.lastNameError,
                          textInputType: TextInputType.emailAddress,
                          onChanged: registerController.setLastName,
                          enabled: !registerController.isLoading,
                        ),
                      );
                    }),

                    //########################################COMEÇA AQUI
                    Observer(builder: (_) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        child: CustomTextField(
                          hint: 'Email',
                          errorText: registerController.emailError,
                          textInputType: TextInputType.emailAddress,
                          onChanged: registerController.setEmail,
                          enabled: !registerController.isLoading,
                        ),
                      );
                    }),
                    //########################################COMEÇA AQUI
                    Observer(builder: (_) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        child: CustomTextField(
                          hint: 'Idade',
                          errorText: registerController.ageError,
                          textInputType: TextInputType.number,
                          onChanged: registerController.setAge,
                          enabled: !registerController.isLoading,
                        ),
                      );
                    }),
                    //########################################COMEÇA AQUI
                    Observer(builder: (_) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        child: CustomTextField(
                          obscure: registerController.passwordVisibilty,
                          hint: 'Senha',
                          suffix: CustomIconButton(
                            iconData: registerController.passwordVisibilty
                                ? Icons.visibility
                                : Icons.visibility_off,
                            onTap: registerController.passwordVisibiltyFunc,
                          ),
                          errorText: registerController.passWordError,
                          textInputType: TextInputType.emailAddress,
                          onChanged: registerController.setPassword,
                          enabled: !registerController.isLoading,
                        ),
                      );
                    }),
                    //########################################COMEÇA AQUI
                    Observer(builder: (_) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        child: CustomTextField(
                          obscure: registerController.passwordVisibilty,
                          hint: 'Confirmar senha',
                          errorText: registerController.repeatPassWordError,
                          textInputType: TextInputType.emailAddress,
                          onChanged: registerController.setRepeatPassword,
                          enabled: !registerController.isLoading,
                          suffix: CustomIconButton(
                            iconData: registerController.passwordVisibilty
                                ? Icons.visibility
                                : Icons.visibility_off,
                            onTap: registerController.passwordVisibiltyFunc,
                          ),
                        ),
                      );
                    }),
                    //########################################COMEÇA AQUI
                    Observer(builder: (_) {
                      return Container(
                        padding: EdgeInsets.all(10),
                        child: CustomButton(
                          title: registerController.isLoading,
                          onPressed: registerController.validForm &&
                                  !registerController.isLoading
                              ? registerController.signIn
                              : null,
                        ),
                      );
                    }),
                    //########################################COMEÇA AQUI
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
