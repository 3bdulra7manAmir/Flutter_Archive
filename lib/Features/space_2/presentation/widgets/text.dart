import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  MyTextFieldState createState() => MyTextFieldState();
}

class MyTextFieldState extends State<MyTextField>
{
  TextEditingController myController = TextEditingController();
  bool hasError = false; // ✅ تعريف متغير hasError

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("تحكم في النص داخل TextFormField")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            TextFormField(
              controller: myController,
              decoration: InputDecoration(
                hintText: "أدخل النص هنا",
                errorText: hasError ? "يجب إدخال قيمة" : null,
                contentPadding: hasError
                    ? const EdgeInsets.symmetric(vertical: 20, horizontal: 10) // ✅ مسافة أكبر عند الخطأ
                    : const EdgeInsets.symmetric(vertical: 10, horizontal: 10), // ✅ مسافة عادية
                border: const OutlineInputBorder(

                ),
              ),

              textAlign: hasError ? TextAlign.start : TextAlign.start, // ✅ تغيير المحاذاة عند الخطأ
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  hasError = myController.text.isEmpty; // ✅ تحديث hasError بناءً على الإدخال
                });
              },
              child: const Text("تحقق من الإدخال"),
            ),
          ],
        ),
      ),
    );
  }
}