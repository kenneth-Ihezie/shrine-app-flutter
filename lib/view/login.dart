// Copyright 2018-present the Flutter authors. All Rights Reserved.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // TODO: Add text editing controllers (101)
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          children: <Widget>[
            SizedBox(height: 80.0),
            Column(
              children: <Widget>[
                Image.asset('assets/diamond.png'),
                SizedBox(height: 16.0),
                Text('SHRINE'),
              ],
            ),
            SizedBox(height: 120.0),
            // TODO: Wrap Username with AccentColorOverride (103)
            // TODO: Remove filled: true values (103)
            // TODO: Wrap Password with AccentColorOverride (103)
            // TODO: Add TextField widgets (101)
            //TextField for Username
            TextField(
              controller: _usernameController,
              decoration: const InputDecoration(
                filled: true,
                labelText: 'Username'
              ),
            ),
            //spacer
            const SizedBox(height: 12.0),
            //TextField for password
            TextField(
              controller: _passwordController,
              decoration: const InputDecoration(
                // The filled: field means the background of the text field is lightly filled in to help people recognize the tap or touch target area of the text field.
                filled: true,
                labelText: 'Password'
              ),
              //The second text field's obscureText: true value automatically replaces the input that the user types with bullets, which is appropriate for passwords.
              obscureText: true,
            ),
            // TODO: Add button bar (101)
            //The ButtonBar arranges its children in a row.
            ButtonBar(
              // TODO: Add a beveled rectangular border to CANCEL (103)
              children: [
                //TODO: Add buttons(101)
                TextButton(
                  child: const Text('CANCEL'),
                  onPressed: () {
                    //TODO: Clear the text fields(101)
                    _usernameController.clear();
                    _passwordController.clear();
                  },
                ),

                // TODO: Add an elevation to NEXT (103)
                // TODO: Add a beveled rectangular border to NEXT (103)
                ElevatedButton(onPressed: () {
                  //TODO: Show the next page(101)
                  //In the ElevatedButton's onPressed: function, pop the most recent route from the Navigator:
                  Navigator.pop(context);
                }, child: const Text('NEXT'))

              ],
            )
          ],
        ),
      ),
    );
  }
}

// TODO: Add AccentColorOverride (103)

/*
Navigator maintains a stack of routes just like
UINavigationController on iOS. Pushing a route
places it at the top of the stack.
Popping the stack removes the most recently
added route. In app.dart of our app, calling
initialRoute: '/login', adds the login screen
to the Navigator, on top of what is passed in home:.
 */
