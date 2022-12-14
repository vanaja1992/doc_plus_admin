import 'package:doc_plus_admin/src/core/assets/app_assets.dart';
import 'package:doc_plus_admin/src/core/common_widgets/app_button.dart';
import 'package:doc_plus_admin/src/core/constants/app_colors.dart';
import 'package:doc_plus_admin/src/core/constants/app_dimen.dart';
import 'package:doc_plus_admin/src/core/constants/app_string.dart';
import 'package:doc_plus_admin/src/core/helpers/popup_message_toast.dart';
import 'package:doc_plus_admin/src/core/theme/app_text_theme.dart';
import 'package:doc_plus_admin/src/core/theme/input_decoration_theme.dart';
import 'package:doc_plus_admin/src/core/helpers/form_validation_helper.dart';
import 'package:doc_plus_admin/src/features/authentication/cubit/authentication_cubit.dart';
import 'package:doc_plus_admin/src/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController emailController =
      TextEditingController(text: "admin@docplus.com");
  TextEditingController passwordController =
      TextEditingController(text: "@dminPlus2020#");
  bool isPasswordHidden = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        resizeToAvoidBottomInset: true,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
                vertical: AppDimen.appPaddingVertical,
                horizontal: AppDimen.appPaddingHorizondal),
            child: Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Center(
                    child: Image(
                      image: AssetImage(AppAssets.loginIconImage),
                      height: AppDimen.appImagelogoheight,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    AppStrings.signTitle,
                    style: AppTextTheme.inputTextStyle1,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: emailController,
                            decoration: InputDecorationThemes
                                .formInputDecoration
                                .copyWith(labelText: AppStrings.emailid),
                            validator: (val) {
                              return FormValidationHelper.validateEmail(val);
                            },
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          TextFormField(
                            controller: passwordController,
                            obscureText: isPasswordHidden,
                            decoration: InputDecorationThemes
                                .formInputDecoration
                                .copyWith(
                              labelText: AppStrings.password_,
                              suffix: IconButton(
                                constraints:
                                    const BoxConstraints(maxHeight: 40),
                                onPressed: () {
                                  setState(() {
                                    isPasswordHidden = !isPasswordHidden;
                                  });
                                },
                                icon: Icon(isPasswordHidden
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                iconSize: 15.0,
                                splashRadius: 10.0,
                              ),
                            ),
                            validator: (val) {
                              return FormValidationHelper.validatePassword(val);
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 2, 24, 24),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: InkWell(
                        child: TextButton(
                          child: Text(
                            AppStrings.forgotPassword,
                            style: AppTextTheme.quotes,
                          ),
                          onPressed: () {
                            setState(() {
                              navigateResetPasswordPage();
                            });
                          },
                        ),
                        // onTap: () {
                        //   navigateResetPasswordPage();
                        // },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  BlocConsumer<AuthenticationCubit, AuthenticationState>(
                    listener: (_, state) {
                      if (state is AuthenticationInitial ||
                          state is AuthenticationLoading) {
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Lottie.asset(AppAssets.loginAnimation,
                                width: 100, height: 60, fit: BoxFit.fill));
                      } else if (state is AuthenticationError) {
                        EasyLoading.dismiss();
                        PopupMessageToast.showMessageToast(state.errorMessage);
                      } else if (state is AuthenticationSuccess) {
                        EasyLoading.dismiss();
                        navigatePage();
                      } else {}
                    },
                    builder: (_, state) {
                      if (state is AuthenticationLoading) {
                        return Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Lottie.asset(AppAssets.loginAnimation,
                                  width: 100, height: 60, fit: BoxFit.fill)),
                        );
                      } else {
                        return Container(
                            constraints: const BoxConstraints.tightFor(
                                width: 123, height: 60),
                            child: AppButton(
                                title: AppStrings.login,
                                onTap: () {
                                  if (!(_formKey.currentState?.validate() ??
                                      false)) {
                                    return;
                                  }
                                  context.read<AuthenticationCubit>().loginUser(
                                      emailController.text.toString(),
                                      passwordController.text.toString());
                                }));
                      }
                    },
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(9.0),
                          child: Text(
                            AppStrings.newlogintext,
                            style: AppTextTheme.body,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: InkWell(
                            child: Text(
                              AppStrings.registerNow,
                              style: AppTextTheme.body1,
                            ),
                            onTap: () {
                              navigateSignupPage();
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }

  void navigatePage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  void navigateSignupPage() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomePage()));
  }

  void clearField() {
    emailController.clear();
    passwordController.clear();
  }

  void navigateResetPasswordPage() {
    // Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(
    //         builder: (context) => const ResetPasswordPage()));
  }
}
