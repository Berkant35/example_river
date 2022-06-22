import 'package:firebase_deneme/line/service/auth/auth_manager.dart';
import 'package:firebase_deneme/line/view_model/admin_works/loading_state_manager.dart';
import 'package:firebase_deneme/line/view_model/global_providers.dart';
import 'package:firebase_deneme/utilities/components/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utilities/constants/extension/context_extension.dart';
import '../../utilities/init/theme/custom_color.dart';


class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AuthLoginAdminState();
}

class _AuthLoginAdminState extends ConsumerState<LoginPage> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  final formkey = GlobalKey<FormState>();

  @override
  void initState() {
    _emailController    = TextEditingController(text: "b@g.com");
    _passwordController = TextEditingController(text: "123456");
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(context.highValue),
        child: Form(
          key: formkey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customTitles(),
              TextFormField(
                controller: _emailController,
              ),
              TextFormField(
                controller: _passwordController,
              ),
              ref.watch(loginButtonStateProvider) == LoadingStates.loaded
                  ? CustomElevatedButton(
                      onPressed: () async {
                        formkey.currentState!.save();
                        if (formkey.currentState!.validate() ) {

                           ref
                              .read(currentUser.notifier)
                              .signIn(_emailController.text,
                                  _passwordController.text, ref);
                        }
                      },
                      inButtonWidget: const Text("Login"),
                    )
                  : const Center(
                      child: CircularProgressIndicator(),
                    )
            ],
          ),
        ),
      ),
    );
  }

  /*
  *       Expanded(flex:6,child: Container(color: Colors.red,)),
          Expanded(flex:5,child: Container(color: Colors.green,)),
          Expanded(flex:4,child: Container(color: Colors.indigoAccent,)),
          Expanded(flex:1,child: Container(color: Colors.blue,)),
          * */

  SingleChildScrollView customTitles() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text('Login Page',
              style: ThemeValueExtension.headline6
                  .copyWith(fontWeight: FontWeight.bold)),
          SizedBox(
            height: context.lowValue,
          ),
          Text('Giriş Yap',
              style: ThemeValueExtension.subtitle2.copyWith(
                  color: CustomColors.athensGray, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
