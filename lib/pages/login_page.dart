
import 'package:flutter/material.dart';


// ignore: camel_case_types
class Login_Page extends StatefulWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  State<Login_Page> createState() => _Login_PageState();
}

// ignore: camel_case_types
class _Login_PageState extends State<Login_Page> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();

  bool _obscured = false;

  final textFieldFocusNode = FocusNode();

  void _toggleObscured() {
    setState(() {
      _obscured = !_obscured;
      if (textFieldFocusNode.hasPrimaryFocus) {
        return;
      } // If focus is on text field, dont unfocus
      textFieldFocusNode.canRequestFocus =
          false; // Prevents focus if tap on eye
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                //image: DecorationImage(image: AssetImage("assets/background/background.jpg"),fit: BoxFit.fill),

                ),
            child: Padding(
              padding: const EdgeInsets.all(13.0),
              child: Form(
                  key: formkey,
                  //autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 13,
                        ),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          decoration: const InputDecoration(
                              labelText: "Username/email",
                              //border: OutlineInputBorder(),
                              prefixIcon: Icon(
                                Icons.email,
                                size: 20,
                                color: Colors.blue,
                              )),
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r'^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,5})+$')
                                    .hasMatch(value)) {
                              return "Enter valid name";
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        TextFormField(
                          autovalidateMode: AutovalidateMode.onUserInteraction,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: _obscured,
                          focusNode: textFieldFocusNode,
                          decoration: InputDecoration(
                              labelText: "Password.",
                              // dddddddfilled: true, // needed for adding a fill color
                              //fillColor: Colors.blue,
                              //border: const OutlineInputBorder(),
                              prefixIcon: const Icon(
                                Icons.lock_clock_outlined,
                                size: 20,
                                color: Colors.blue,
                              ),
                              suffixIcon: GestureDetector(
                                onTap: _toggleObscured,
                                child: Icon(
                                  _obscured
                                      ? Icons.visibility_off_rounded
                                      : Icons.visibility_rounded,
                                  size: 24,
                                ),
                              )),
                          validator: (value) {
                            if (value!.isEmpty ||
                                !RegExp(r"^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$")
                                    .hasMatch(value)) {
                              return "Incorrect Password";
                            } else {
                              return null;
                            }
                          },
                        ),
                        const SizedBox(
                          height: 13,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text("Forgot password")),
                        const SizedBox(
                          height: 13,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              if (formkey.currentState!.validate()) {
                                //context.router.push(const Find_TuitorPageRoute());
                             
                              }
                            
                            },
                            child: const Text("Login"))
                      ],
                    ),
                  )),
            )),
      ),
    );
  }
}
