import 'package:e_connect_app/components/button.dart';
import 'package:e_connect_app/configs/app_colors.dart';
import 'package:e_connect_app/configs/app_size.dart';
import 'package:e_connect_app/utilities/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

double borderSize = AppSizes.xl;

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: renderBody(),
    );
  }
}

Widget renderBody() {
  final _formKey = GlobalKey<FormState>();
  final _userController = TextEditingController();
  final _passwordController = TextEditingController();
  return Form(
    key: _formKey,
    child: Container(
      color: Colors.blue.shade100,
      padding: EdgeInsets.all(AppSizes.l),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          inputFormField(_userController),
          const SizedBox(
            height: 20,
          ),
          passFormField(),
          Padding(
            padding: EdgeInsets.only(top: AppSizes.xl),
            child: LoginButton(
              onPress: () => {},
              title: 'Đăng nhập',
            ),
          ),
        ],
      ),
    ),
  );
}

Widget inputFormField(TextEditingController _controller) {
  return Container(
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 20,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: TextFormField(
      autocorrect: false,
      controller: _controller,
      decoration: InputDecoration(
        prefixIcon: textFieldIcon(Icons.phone_android_sharp),
        hintText: 'Số điện thoại',
        fillColor: AppColors.whiteColor,
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(borderSize),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(borderSize),
        ),
      ),
    ),
  );
}

Widget textFieldIcon(IconData icon) {
  return Padding(
    child: Icon(icon),
    padding: EdgeInsets.all(AppSizes.m),
  );
}

Widget passFormField() {
  return Container(
    decoration: const BoxDecoration(
      boxShadow: [
        BoxShadow(
          color: Colors.black12,
          blurRadius: 20,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: TextFormField(
      autocorrect: false,
      decoration: InputDecoration(
        prefixIcon: textFieldIcon(Icons.lock),
        suffixIcon: textFieldIcon(Icons.remove_red_eye),
        hintText: 'Nhập mật khẩu',
        fillColor: AppColors.whiteColor,
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(borderSize),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(borderSize),
        ),
      ),
    ),
  );
}

Widget renderLogo() {
  return Image.asset(Utils.getImagePath('4457', format: 'jpg'));
}
