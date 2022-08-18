import 'package:flutter/material.dart';

class FoodHomePage extends StatefulWidget {
  FoodHomePage({Key? key}) : super(key: key);

  @override
  State<FoodHomePage> createState() => _FoodHomePageState();
}

class _FoodHomePageState extends State<FoodHomePage> {
  final Color blackColor = Color(0xff070E17);

  final Color lightBlackColor = Color(0xff0D1624);

  Color whiteColor = Colors.white;

  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: blackColor,
        leading: const Center(
            child: CircleAvatar(
          radius: 20,
        )),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              "Goodmorning...",
              style: TextStyle(fontSize: 10),
            ),
            Text("Evans Mensah"),
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Material(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              color: const Color(0xff1C3747),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: const [
                    Icon(Icons.location_on, color: Color(0xffEC5528)),
                    Text(
                      "loc",
                      style: TextStyle(color: Color(0xffC1BFC1)),
                    ),
                    Icon(Icons.arrow_drop_down_outlined),
                  ],
                ),
              ),
            ),
          )
        ],
        elevation: 0,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: Center(
              child: Text(
                "Raf",
                style: Theme.of(context).textTheme.headline2!.copyWith(
                    color: whiteColor,
                    fontSize: 30,
                    fontStyle: FontStyle.italic),
              ),
            ),
          ),
          Text(
            "Login",
            style: TextStyle(color: whiteColor),
          ),
          TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                labelText: "E-mail",
                filled: true,
                fillColor: whiteColor,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.grey)),
                prefixIcon: Icon(Icons.email)),
          ),
          SizedBox(
            height: 10,
          ),
          TextField(
            decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(vertical: 10),
                labelText: "Password",
                filled: true,
                fillColor: whiteColor,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide(color: Colors.grey)),
                prefixIcon: Icon(Icons.lock)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                      value: isChecked,
                      side: BorderSide(color: Colors.red),
                      onChanged: (value) {
                        setState(() {
                          isChecked = value!;
                        });
                      }),
                  Text(
                    "Stay signed in",
                    style: TextStyle(color: whiteColor),
                  )
                ],
              ),
              Text(
                "Sign up",
                style: TextStyle(color: whiteColor),
              )
            ],
          )
        ],
      ),
    );
  }
}
