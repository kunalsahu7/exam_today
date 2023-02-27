import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class UserInput extends StatefulWidget {
  const UserInput({Key? key}) : super(key: key);

  @override
  State<UserInput> createState() => _UserInputState();
}

class _UserInputState extends State<UserInput> {
  TextEditingController txttabledata = TextEditingController();
  GlobalKey<FormState> check = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Form(
          key: check,
          child: Scaffold(
            backgroundColor: Colors.grey,
            appBar: AppBar(
              title: Text("Data"),
              centerTitle: true,
              backgroundColor: Colors.black,
            ),
            body: Column(
              children: [
                Container(
                  margin: EdgeInsets.all(10),
                  child: TextFormField(
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        hintText: "Enter data",
                        focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                        ),
                        disabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                        )
                    ),
                    keyboardType: TextInputType.phone,
                    controller: txttabledata,
                    validator: (value) {
                      if (value!.isEmpty)
                      {
                        return "Enter ValidData!!!!!";
                      }
                      return null;
                    },
                  ),
                ),
                ElevatedButton(onPressed: () {
                  if(check.currentState!.validate())
                  {
                    Navigator.pushNamed(context, 'output',arguments: txttabledata.text);
                    txttabledata.clear();
                  }
                },
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
                  child: Text("Done",),),
              ],
            ),
          ),
        ));
  }
}