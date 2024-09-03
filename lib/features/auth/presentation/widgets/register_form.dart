import 'package:commerce/core/constants/constants.dart';
import 'package:commerce/core/utils/validators.dart';
import 'package:commerce/features/auth/presentation/widgets/have_account.dart';
import 'package:commerce/features/auth/presentation/widgets/register_btn.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(CoreDefaults.margin),
      padding: const EdgeInsets.all(CoreDefaults.padding),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: CoreDefaults.boxShadow,
        borderRadius: CoreDefaults.borderRadius,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Name"),
          const SizedBox(height: 8),
          TextFormField(
            validator: Validators.requiredWithFieldName('Name').call,
            textInputAction: TextInputAction.next,
          ),
          const SizedBox(height: CoreDefaults.padding),
          const Text("Phone Number"),
          const SizedBox(height: 8),
          TextFormField(
            textInputAction: TextInputAction.next,
            validator: Validators.required.call,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
          ),
          const SizedBox(height: CoreDefaults.padding),
          const Text("Password"),
          const SizedBox(height: 8),
          TextFormField(
            validator: Validators.required.call,
            textInputAction: TextInputAction.next,
            obscureText: true,
            decoration: InputDecoration(
              suffixIcon: Material(
                color: Colors.transparent,
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    CoreIcons.eye,
                    width: 24,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: CoreDefaults.padding),
          const RegisterBtn(),
          const AlreadyHaveAnAccount(),
          const SizedBox(height: CoreDefaults.padding),
        ],
      ),
    );
  }
}