import 'package:currency_app/locator.dart';
import 'package:currency_app/resources/dimens.dart';
import 'package:currency_app/resources/validators.dart';
import 'package:flutter/material.dart';
import 'package:functional_widget_annotation/functional_widget_annotation.dart';
import '../../resources/strings/tr.dart';
import '../../widget/view_builder.dart';
import 'login_view_model.dart';

part 'login_view.g.dart';

@swidget
Widget loginView(void data) => ViewBuilder<LoginViewModel>(
      viewModelBuilder: () => LoginViewModel(sl(), sl()),
      builder: (model) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(DDimens.m),
          child: Form(
            key: model.formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: model.user,
                  decoration: InputDecoration(hintText: Tr.usernameHint()),
                  validator: reqMin3,
                ),
                TextFormField(
                  obscureText: true,
                  controller: model.password,
                  decoration: InputDecoration(hintText: Tr.passwordHint()),
                  validator: reqMin3,
                ),
                OutlinedButton(
                  onPressed: model.auth,
                  child: Text(Tr.loginButton()),
                )
              ],
            ),
          ),
        ),
      ),
    );
