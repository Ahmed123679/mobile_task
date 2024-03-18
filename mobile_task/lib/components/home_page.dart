import 'package:flutter/material.dart' hide Title;
import 'package:mobile_task/components/form_field.dart';
import 'title.dart';

class HomePage extends StatelessWidget {
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login screen app',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Title(
                'Codeplayon',
                fontsize: 24,
              ),
            ),
            Form(
                key: formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child:
                          TextInput(placeHolder: 'username', isPassword: false),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(top: 5, left: 20, right: 20),
                      child:
                          TextInput(placeHolder: 'password', isPassword: true),
                    ),
                  ],
                )),
            SizedBox(
              height: 5,
            ),
            GestureDetector(onTap: () {}, child: Title('Forgot password')),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: ElevatedButton(
                onPressed: onSubmit,
                style: ElevatedButton.styleFrom(
                  shape: LinearBorder(),
                  backgroundColor: Colors.blue,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Title(
                    'Login',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Title(
                  'does not have an account?',
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Title(
                    'Sign Up',
                    color: Colors.blue,
                    fontsize: 20,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void onSubmit() {
    if (formKey.currentState!.validate() == true) {
    } else {}
  }
}
