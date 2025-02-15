import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:jayecommerce/core/redux/state/state.dart';
import 'package:jayecommerce/data/viewmodel/login_viewmodel.dart';
import 'package:jayecommerce/presentation/widget/jshowalertbox.dart';
import 'package:jayecommerce/presentation/widget/jsnackbar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController txtEmail = TextEditingController(text: "");
  final TextEditingController txtPasword = TextEditingController(text: "");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('เพิ่มกิจนิมนต์', style: TextStyle(color: Colors.white)),
      ),
      body: StoreConnector<AppState, LoginViewmodel>(
        converter: (store) =>
            LoginViewmodel(token: store.state.tokenState.token as String),
        builder: (context, vm) {
          return SingleChildScrollView(
            child: Form(
                child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Email :"),
                  TextFormField(
                    controller: txtEmail,
                  ),
                  SizedBox(height: 20),
                  Text("Password :"),
                  TextFormField(
                    controller: txtPasword,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: TextButton(
                      style: TextButton.styleFrom(
                          foregroundColor: Colors.white,
                          backgroundColor: Colors.orangeAccent),
                      onPressed: () async {
                        List<Widget> listErrorWidget = [];
                        if (txtEmail.text == "") {
                          listErrorWidget.add(Text("- กรุณาเลือก Email"));
                        }
                        if (txtPasword.text == "") {
                          listErrorWidget.add(Text("- กรุณาใส่ Password"));
                        }
                        if (listErrorWidget.length > 0) {
                          JShowAlertBox.showErrorWithAddErrorWidgert(
                              context, listErrorWidget, "พบข้อผิดพลาดดังนี้");
                        } else {
                          try {} catch (ex) {
                            throw ex;
                          }
                          Navigator.pop(context);
                          JSnackbar.show(context, "Login Succes");
                        }
                      },
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            )),
          );
        },
      ),
    );
  }
}
