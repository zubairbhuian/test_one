import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserForm extends StatefulWidget {
  const UserForm({Key? key}) : super(key: key);

  @override
  State<UserForm> createState() => _UserFormState();
}

class _UserFormState extends State<UserForm> {
  //  ?date
  DateTime date = DateTime.now();
  // ?Dropdown
  String selectedItem = 'Male';
  List<String> items = [
    'Male',
    'Female',
    'Others',
  ];
  // ?Image Picker
  Future pickImage() async {
    await ImagePicker().pickImage(source: ImageSource.gallery);
  }

  // ?Form Controler
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("User Form")),
      body: Form(
          key: formKey,
          child: ListView(
            padding:
                const EdgeInsets.only(top: 40, left: 20, right: 20, bottom: 20),
            children: [
              //  ?Name
              TextFormField(
                keyboardType: TextInputType.name,
                controller: _nameController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Name")),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^[a-z A-Z,.\-]+$').hasMatch(value)) {
                    return "Enter Name";
                  } else {
                    return null;
                  }
                },
              ),
              // ?Email
              const SizedBox(
                height: 15,
              ),
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
              //  ?Contract
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                controller: _phoneController,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(), label: Text("Phone Number")),
                validator: (value) {
                  if (value!.isEmpty ||
                      !RegExp(r'^(?:(?:\+|00)88|01)?\d{11}$').hasMatch(value)) {
                    return "Enter Bangladeshi Phone Number";
                  } else {
                    return null;
                  }
                },
              ),
              const SizedBox(
                height: 15,
              ),
              //  ?Selection
              DropdownButtonFormField<String>(
                value: selectedItem,
                icon: const Icon(Icons.arrow_downward),
                style: TextStyle(color: Colors.grey[700]),
                decoration: const InputDecoration(border: OutlineInputBorder()),
                elevation: 16,
                onChanged: (String? newValue) {
                  setState(() {
                    selectedItem = newValue!;
                  });
                },
                items: items.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),
              //  ?Date Picker
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                // initialValue: '${date.day}/${date.month}/${date.year}',
                readOnly: true,

                controller: _dateController,
                decoration: InputDecoration(
                    hintText: '${date.day}/${date.month}/${date.year}',
                    border: const OutlineInputBorder(),
                    // label: const Text("Date"),
                    suffixIcon: InkWell(
                        child: const Icon(Icons.date_range),
                        onTap: () async {
                          DateTime? newDate = await showDatePicker(
                              context: context,
                              initialDate: date,
                              firstDate: DateTime(2021),
                              lastDate: DateTime(2023));
                          // if 'Cencel'=>null
                          if (newDate == null) return;
                          //if 'Ok'=>Datetime
                          setState(() {
                            date = newDate;
                            // _dateController = date;
                            // print(_dateController);
                          });
                        })),
                // validator: (value) {
                //   if (value!.isEmpty) {
                //     return "Enter Date";
                //   } else {
                //     return null;
                //   }
                // },
              ),
              //  ?Image Upload
              const SizedBox(
                height: 15,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: OutlinedButton.icon(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.only(
                          left: 20, right: 20, top: 10, bottom: 10)),
                  onPressed: pickImage,
                  icon: const Text("Add Photo"),
                  label: const Icon(Icons.file_upload_outlined),
                ),
              ),
              //  ?Submit
              const SizedBox(height: 30),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(15),
                      maximumSize: const Size(220, 80)),
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
