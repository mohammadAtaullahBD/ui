import 'package:flutter/material.dart';
import 'package:ui/views/widget/vertical_space.dart';

class AddUserView extends StatelessWidget {
  const AddUserView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            spaceV(size.height * 0.1),
            Center(child: Image.asset('assets/logo.png')),
            spaceV(size.height * 0.02),
            const Text(
              "Add User",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
            ),
            spaceV(size.height * 0.02),
            const Text("Phone number :"),
            spaceV(10.0),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.call_sharp),
                hintText: '1234567890',
              ),
            ),
            spaceV(size.height * 0.02),
            const Text("Your Email :"),
            spaceV(10.0),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.email_sharp),
                hintText: 'example@gmail.com',
              ),
            ),
            spaceV(size.height * 0.02),
            const Text("Your Password :"),
            spaceV(10.0),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_sharp),
                hintText: '........',
              ),
              obscureText: true,
            ),
            spaceV(size.height * 0.02),
            const Text("Confirm your Password :"),
            spaceV(10.0),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock_sharp),
                hintText: '........',
              ),
              obscureText: true,
            ),
            spaceV(size.height * 0.02 + 10.0),
            ElevatedButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsetsDirectional.symmetric(vertical: 12.0),
                child: Center(
                  child: Text(
                    "Create user",
                    style: TextStyle(color: Colors.white, fontSize: 20.0),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
