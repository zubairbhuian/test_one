import 'package:flutter/material.dart';

class UserForm extends StatelessWidget {
  const UserForm({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // !Form
    final GlobalKey<FormState> formKey = GlobalKey<FormState>();
    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passController = TextEditingController();
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("User Form")),
      body: Form(
          key: formKey,
          child: ListView(
            padding:
                const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
            children: [
              //  !Name
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: _emailController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Email")),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                          .hasMatch(value)) {
                    return "Enter Valide Email";
                  } else {
                    return null;
                  }
                },
              ),

              // !Email
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: _passController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Email")),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                          .hasMatch(value)) {
                    return "Enter Valide Email";
                  } else {
                    return null;
                  }
                },
              ),
              //  !Contract
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: _passController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Email")),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                          .hasMatch(value)) {
                    return "Enter Valide Email";
                  } else {
                    return null;
                  }
                },
              ),
              //  !Selection
              //  !Date Picker
              //  !Image Upload
              //  !Submit
              const SizedBox(height: 20),
              ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      // Process data.
                    }
                  },
                  child: const Text("Submit"))
            ],
          )),
    );
  }
}
