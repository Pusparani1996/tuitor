import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:tuitor/auto_route_page.gr.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "LOUSING TUITION CENTER",
            style: TextStyle(
              color: Colors.blueGrey,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic, 
                ),
          ),
          const SizedBox(
            height: 140,
          ),
          Container(
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.lightBlue),
              child: TextButton(
                  onPressed: () {
                    context.router.push(const Find_TuitorPageRoute());
                  },
                  child: const Text(
                    "Find a Tuitor",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ))),
          const SizedBox(
            height: 15,
          ),
          Container(
              height: MediaQuery.of(context).size.height / 15,
              width: MediaQuery.of(context).size.width * 0.6,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: const Color.fromARGB(255, 68, 243, 255)),
              child: TextButton(
                  onPressed: () {
                    context.router.push(const Become_TuitorPageRoute());
                  },
                  child: const Text(
                    "Become a Tuitor",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                    ),
                    textAlign: TextAlign.center,
                  ))),
          const SizedBox(
            height: 150,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Padding(
                padding:  EdgeInsets.only(bottom: 14),
                child:  Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              TextButton(
                  onPressed: () {
                    context.router.push(  Login_PageRoute());
                  },
                  child: const Text(
                    "Login here",
                    style: TextStyle(
                      fontSize: 17,
                    ),textAlign: TextAlign.end,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
