import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/routes/routes.dart';
import 'package:commerce/core/theme/theme.dart';
import 'package:commerce/core/utils/validators.dart';
import 'package:commerce/features/auth/presentation/widgets/login_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPageForm extends StatefulWidget {
  const LoginPageForm({
    super.key,
  });

  @override
  State<LoginPageForm> createState() => _LoginPageFormState();
}

class _LoginPageFormState extends State<LoginPageForm> {
  final _key = GlobalKey<FormState>();

  bool isPasswordShown = false;
  onPassShowClicked() {
    isPasswordShown = !isPasswordShown;
    setState(() {});
  }

  onLogin() {
    final bool isFormOkay = _key.currentState?.validate() ?? false;
    if (isFormOkay) {
      Navigator.pushNamedAndRemoveUntil(context, RoutesName.entryPoint, (Route<dynamic> route) => false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: CoreThemeData.defaultTheme.copyWith(
        inputDecorationTheme: CoreInputTheme.secondaryInputDecorationTheme,
      ),
      child: Padding(
        padding: const EdgeInsets.all(CoreDefaults.padding),
        child: Form(
          key: _key,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Phone Field
              const Text("Phone Number"),
              const SizedBox(height: 8),
              TextFormField(
                keyboardType: TextInputType.number,
                validator: Validators.requiredWithFieldName('Phone').call,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(height: CoreDefaults.padding),

              // Password Field
              const Text("Password"),
              const SizedBox(height: 8),
              TextFormField(
                validator: Validators.password.call,
                onFieldSubmitted: (v) => onLogin(),
                textInputAction: TextInputAction.done,
                obscureText: !isPasswordShown,
                decoration: InputDecoration(
                  suffixIcon: Material(
                    color: Colors.transparent,
                    child: IconButton(
                      onPressed: onPassShowClicked,
                      icon: SvgPicture.asset(
                        CoreIcons.eye,
                        width: 24,
                      ),
                    ),
                  ),
                ),
              ),

              // Forget Password labelLarge
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, RoutesName.forgotPassword);
                  },
                  child: const Text('Forget Password?'),
                ),
              ),

              // Login labelLarge
              LoginButton(onPressed: onLogin),
            ],
          ),
        ),
      ),
    );
  }
}