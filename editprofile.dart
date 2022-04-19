// Edit Profile Page
// import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  static const String id = 'editprofile';
  const EditProfile({Key? key}) : super(key: key);
  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
// Clean up the controller when the widget is disposed.

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Edit Profile',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        backgroundColor: const Color(0xFF111114),
        automaticallyImplyLeading: false,
        actions: [
          Align(
            alignment: Alignment.topLeft,
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
            ),
            child: Text(
              'Back',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
        ],
      ),
      body: Container(
        alignment: Alignment.topLeft,
        margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
        child: Form(
          key: _formKey,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // *********Mobile Number***********
                const Text(
                  'Mobile Number',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Mobile Number is required!';
                      }
                      if (value.length != 10) {
                        return "Mobile no must be of 10 digit";
                      }
                      //the ph no is valid
                      return null;
                    },
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.phone),
                      hintText: '95214XXXXX',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(color: Colors.grey)),
                    ),
                  ),
                ),

                // *********Email Address*********

                const Text(
                  'Email Address',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email Address is required!';
                      }
                      //using regular expression
                      if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                        return "Please enter a valid email address";
                      }
                      //the email is valid
                      return null;
                    },
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.email),
                      hintText: 'aditikhandagale@gmail.com',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(color: Colors.grey)),
                    ),
                  ),
                ),

                // const Text(
                //   'Email Address',
                //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                // ),
                // Padding(
                //   padding:
                //       const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                //   child: TextFormField(
                //     validator: (value) {
                //       if (value == null || value.isEmpty) {
                //         return 'Email Address cannot be empty!';
                //       }
                //       return null;
                //     },
                //     enableSuggestions: false,
                //     autocorrect: false,
                //     decoration: InputDecoration(
                //       icon: const Icon(Icons.email),
                //       hintText: 'aditikhandagale@gmail.com',
                //       border: OutlineInputBorder(
                //           borderRadius: BorderRadius.circular(8.0),
                //           borderSide: const BorderSide(color: Colors.grey)),
                //     ),
                //   ),
                // ),

                // ********Personal Details**********
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text(
                    'Name',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Name is required!';
                      }
                      return null;
                    },
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      icon: const Icon(Icons.person),
                      hintText: 'Enter your full name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(color: Colors.grey)),
                    ),
                  ),
                ),

                // **********Birthday********
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text(
                    'Birthday (Optional)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.calendar_today_rounded),
                      hintText: 'DD-MM-YYYY',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(color: Colors.grey)),
                    ),
                  ),
                ),

                // *********Address*********
                Container(
                  margin: const EdgeInsets.only(top: 10),
                  child: const Text(
                    'Address (Optional)',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 10),
                  child: TextFormField(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.home_rounded),
                      hintText: 'Enter your Address',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: const BorderSide(color: Colors.grey)),
                    ),
                  ),
                ),

                Container(
                  margin: const EdgeInsets.only(top: 15),
                  alignment: Alignment.center,
                  child: OutlinedButton(
                    child: const Text(
                      'Save Changes',
                      style: TextStyle(color: Colors.black),
                    ),
                    onPressed: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      if (_formKey.currentState!.validate()) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Profile updated')),
                        );
                      }
                    },
                    style: OutlinedButton.styleFrom(
                        minimumSize: const Size(300, 30),
                        primary: Colors.grey.shade700,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 0, vertical: 15),
                        textStyle: const TextStyle(
                            fontFamily: 'Arial',
                            fontSize: 13,
                            fontWeight: FontWeight.bold)),
                  ),
                )
              ]),
        ),
      ),
    );
  }

  Inkwell({Null Function()? onTap}) {}
}

class DatabaseReference {}
