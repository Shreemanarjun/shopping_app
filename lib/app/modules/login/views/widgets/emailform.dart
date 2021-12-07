import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shopping_app/app/routes/app_pages.dart';

class EmailFormSection extends StatelessWidget {
  const EmailFormSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Row(
            children: const <Widget>[
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 40.0),
                  child: Text(
                    "EMAIL",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                      fontSize: 15.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Container(
            width: Get.context!.width,
            margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              border: Border(
                bottom: BorderSide(
                    color: Colors.redAccent,
                    width: 0.5,
                    style: BorderStyle.solid),
              ),
            ),
            padding: const EdgeInsets.only(left: 0.0, right: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                Expanded(
                  child: TextField(
                    obscureText: true,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter your E-mail',
                      hintStyle: TextStyle(color: Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24),
            child: Row(
              children: const <Widget>[
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 40.0),
                    child: Text(
                      "PASSWORD",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.redAccent,
                        fontSize: 15.0,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: Get.context!.width,
            margin: const EdgeInsets.only(left: 40.0, right: 40.0, top: 10.0),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
                border: Border(
              bottom: BorderSide(
                  color: Colors.grey, width: 0.5, style: BorderStyle.solid),
            )),
            padding: const EdgeInsets.only(left: 0.0, right: 10.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: const <Widget>[
                Expanded(
                  child: TextField(
                    obscureText: true,
                    textAlign: TextAlign.left,
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter password',
                        hintStyle: TextStyle(color: Colors.grey),
                        suffixIcon: Icon(Icons.visibility)),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: TextButton(
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                      fontSize: 15.0,
                    ),
                    textAlign: TextAlign.end,
                  ),
                  onPressed: () => {},
                ),
              ),
            ],
          ),
          Container(
            width: Get.context!.width,
            margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10.0),
            alignment: Alignment.center,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      primary: Colors.redAccent,
                    ),
                    onPressed: () {
                      Get.toNamed(Routes.dashboard);
                    },
                    child: const Text(
                      "LOGIN",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
