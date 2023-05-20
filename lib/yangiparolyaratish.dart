import 'package:flutter/material.dart';
import 'package:flutter_application_1/companents/textfromfeild.dart';
import 'package:flutter_application_1/localization/localstore.dart';

class NewPassword extends StatefulWidget {
  const NewPassword({super.key});

  @override
  State<NewPassword> createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: CustomTextFrom(
                controller: controller,
                label: 'New Password here',
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: InkWell(
                onTap: () {
                  LocalStore.setPassword(controller.text);
                  Navigator.pop(context);
                },
                child: Container(
                  width: double.infinity,
                  height: 75,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(16)),
                  ),
                  child: const Center(
                      child: Text(
                    'Submit',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  )),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
