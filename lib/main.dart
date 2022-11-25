import 'dart:convert';

import 'package:currency_picker/currency_picker.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'model.dart';

void main() {
  runApp(MaterialApp(
    home: currency_converter(),
    debugShowCheckedModeBanner: false,
  ));
}

class currency_converter extends StatefulWidget {
  const currency_converter({Key? key}) : super(key: key);

  @override
  State<currency_converter> createState() => _currency_converterState();
}

class _currency_converterState extends State<currency_converter> {
  String c_name1 = "USD";
  String c_name2 = "INR";
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text(
              "Currency",
              style: TextStyle(color: Model.black),
            ),
            backgroundColor: Model.teal),
        body: Padding(
          padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
          child: Center(
              child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: t1,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Model.black)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Model.black)),
                        labelText: "Enter Value",
                        labelStyle: TextStyle(color: Model.black),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        showCurrencyPicker(
                          context: context,
                          onSelect: (value) {
                            setState(() {
                              c_name1 = value.code;
                            });
                          },
                        );
                      },
                      child: Text("$c_name1",
                          style: TextStyle(color: Colors.black)))
                ],
              ),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(120, 40),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(0))),
                      primary: Model.teal,
                      onPrimary: Model.black),
                  onPressed: () async {
                    var url = Uri.parse(
                        "https://pdfile7.000webhostapp.com/currency.php");
                    var response = await http.post(url, body: {
                      'to': c_name2,
                      'from': c_name1,
                      'amount': t1.text,
                    });

                    print("response = ${response.body}");
                    Map map = jsonDecode(response.body);
                    double result = map['result'];
                    setState(() {
                      t2.text = "$result";
                    });
                  },
                  child: Icon(
                    Icons.autorenew_rounded,
                    size: 30,
                  )),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: t2,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Model.black)),
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Model.black)),
                        labelText: "Enter Value",
                        labelStyle: TextStyle(color: Model.black),
                      ),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        showCurrencyPicker(
                          context: context,
                          onSelect: (value) {
                            setState(() {
                              c_name2 = value.code;
                            });
                          },
                        );
                      },
                      child: Text(
                        "$c_name2",
                        style: TextStyle(color: Colors.black),
                      ))
                ],
              ),
            ],
          )),
        ));
  }
}
