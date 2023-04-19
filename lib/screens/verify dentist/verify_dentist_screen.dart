import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class VerifyDentist extends StatefulWidget {
  const VerifyDentist({Key? key}) : super(key: key);

  @override
  State<VerifyDentist> createState() => _VerifyDentistState();
}

class _VerifyDentistState extends State<VerifyDentist> {
  String? selectedAcademic;
  List<String> academicList = ['Graduated', 'Undergraduate'];

  late File IDimage;
  final imagePicker = ImagePicker();
  uploadIDImage() async {
    var pickedImage = await imagePicker.pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      IDimage = File(pickedImage.path);
    } else {}
  }

  late File UIDimage;
  uploadUIDImage() async {
    var pickedImage = await imagePicker.pickImage(source: ImageSource.camera);
    if (pickedImage != null) {
      UIDimage = File(pickedImage.path);
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'At last we need to verify your Academic degree',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '(Rest assured as this information is deleted after verification)',
                style: TextStyle(fontSize: 12),
              ),
              SizedBox(
                height: 35,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Academic Degree*',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 250,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: DropdownButton<String>(
                            isExpanded: true,
                            underline: SizedBox(),
                            value: selectedAcademic,
                            items: academicList
                                .map((item) => DropdownMenuItem(
                                      child: Text(
                                        item,
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      value: item,
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                selectedAcademic = value!;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        'Current university*',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Container(
                        width: 250,
                        height: 40,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: DropdownButton<String>(
                            isExpanded: true,
                            underline: SizedBox(),
                            value: selectedAcademic,
                            items: academicList
                                .map((item) => DropdownMenuItem(
                                      child: Text(
                                        item,
                                        style: TextStyle(fontSize: 15),
                                      ),
                                      value: item,
                                    ))
                                .toList(),
                            onChanged: (value) {
                              setState(() {
                                selectedAcademic = value!;
                              });
                            }),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Text(
                        'National ID photo(face)*',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextButton(
                        onPressed: uploadIDImage,
                        child: Text(
                          'Upload image',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xff0e8388),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'University ID photo or your degree certificate(face)*',
                        style: TextStyle(fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      TextButton(
                        onPressed: uploadUIDImage,
                        child: Text(
                          'Upload image',
                          style: TextStyle(color: Colors.white),
                        ),
                        style: TextButton.styleFrom(
                          backgroundColor: Color(0xff0e8388),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 20, right: 20),
                        width: 350,
                        child: TextButton(
                          onPressed: () {},
                          child: Text(
                            'Submit',
                            style: TextStyle(color: Colors.white),
                          ),
                          style: TextButton.styleFrom(
                            backgroundColor: Color(0xff0e8388),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
