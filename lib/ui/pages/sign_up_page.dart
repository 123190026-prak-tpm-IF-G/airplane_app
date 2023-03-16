import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:my_app/shared/theme.dart';
import 'package:my_app/ui/widgets/custom_button.dart';
import 'package:my_app/ui/widgets/custom_text_form_field.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController(text: '');
  final TextEditingController emailController = TextEditingController(text: '');
  final TextEditingController passwordController =
      TextEditingController(text: '');
  final TextEditingController hobbyController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    Widget inputSection() {
      Widget nameInput() {
        return CustomTextFormField(
          title: 'Full Name',
          hintText: 'Your full name',
          controller: nameController,
        );
      }

      Widget emailInput() {
        return CustomTextFormField(
          title: 'Email Address',
          hintText: 'Your email address',
          controller: emailController,
        );
      }

      Widget passwordInput() {
        return CustomTextFormField(
          title: 'Password',
          hintText: 'Your password',
          controller: passwordController,
        );
      }

      Widget hobbyInput() {
        return CustomTextFormField(
          title: 'Hobby',
          hintText: 'Your hobby',
          controller: hobbyController,
        );
      }

      Widget submitButton() {
        return CustomButton(
          title: 'Get Started',
          onPressed: () {
            final snackBar = const SnackBar(
              content: Text('Yay! A SnackBar!'),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
        );
      }

      return Container(
        margin: const EdgeInsets.only(top: 30),
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          color: kWhiteColor,
          borderRadius: BorderRadius.circular(
            defaultRadius,
          ),
        ),
        child: Column(
          children: [
            nameInput(),
            emailInput(),
            passwordInput(),
            hobbyInput(),
            submitButton()
          ],
        ),
      );
    }

    Widget signInButton() {
      return GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/sign-in');
        },
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(
            top: 50,
            bottom: 73,
          ),
          child: Text(
            'Have an account? Sign In',
            style: greyTextStyle.copyWith(
              fontSize: 16,
              fontWeight: light,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              child: Text('Join us and get\nyour next journey',
                  style: blackTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  )),
            ),
            inputSection(),
            signInButton(),
          ],
        ),
      ),
    );
  }
}
