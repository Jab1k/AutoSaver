// ignore_for_file: unused_local_variable, prefer_const_constructors, unnecessary_brace_in_string_interps

import 'package:flutter/material.dart';
import 'package:flutter_application_1/companents/textfromfeild.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/localization/localstore.dart';
import 'package:flutter_application_1/provider/main_provider.dart';
import 'package:flutter_application_1/yangiparolyaratish.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  List<String>? passwords;
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var state = context.read<MainProvider>();
    var con = context.watch<MainProvider>();
    print(LocalStore.isnew);
    print(LocalStore.passwords);

    return Scaffold(
        appBar: AppBar(
          title: const Text('Login Page'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32),
                  child: CustomTextFrom(
                    controller: controllerEmail,
                    label: 'Email',
                  )),
              const SizedBox(
                height: 15,
              ),
              LocalStore.isnew
                  ? Padding(
                      padding: const EdgeInsets.only(left: 32, right: 32),
                      child: CustomTextFrom(
                        controller: controllerPass,
                        label: 'Password',
                      ))
                  : Padding(
                      padding: const EdgeInsets.only(left: 32, right: 32),
                      child: InkWell(
                        onTap: () async {
                          showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Center(
                                  child: ListView.builder(
                                shrinkWrap: true,
                                itemCount: LocalStore.passwords.length,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 65,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12)),
                                          color: const Color.fromARGB(
                                              255, 205, 195, 195)),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Row(
                                          // ignore: prefer_const_literals_to_create_immutables
                                          children: [
                                            Icon(
                                              Icons.lock,
                                              color: Colors.grey,
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(12.0),
                                              child: SizedBox(
                                                width: 300,
                                                height: 150,
                                                child: ListView.builder(
                                                  itemCount: LocalStore
                                                      .passwords.length,
                                                  itemBuilder:
                                                      (context, index) {
                                                    return InkWell(
                                                      onTap: () {
                                                        controllerPass.text =
                                                            LocalStore
                                                                    .passwords[
                                                                index];
                                                        Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                              builder: (context) => HomePage(
                                                                  pass: LocalStore
                                                                          .passwords[
                                                                      index]),
                                                            ));
                                                      },
                                                      child: Row(
                                                        children: [
                                                          con.isshow
                                                              ? Text(
                                                                  '${LocalStore.passwords[index]}')
                                                              : Text(
                                                                  '* * * * *'),
                                                          Spacer(),
                                                          InkWell(
                                                            onTap: () {
                                                              state
                                                                  .checkisshow();
                                                            },
                                                            child: Icon(
                                                              Icons
                                                                  .remove_red_eye,
                                                              color:
                                                                  Colors.grey,
                                                            ),
                                                          )
                                                        ],
                                                      ),
                                                    );
                                                  },
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  );
                                },
                              ));
                            },
                          );
                        },
                        child: Container(
                          width: double.infinity,
                          height: 55,
                          decoration: BoxDecoration(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(16)),
                              border: Border.all(color: Colors.black)),
                        ),
                      ),
                    ),
              SizedBox(
                height: 15,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NewPassword(),
                      ));
                },
                child: Text('Parol Yaratish'),
              )
            ],
          ),
        ));
  }
}
