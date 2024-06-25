import 'package:flutter/material.dart';
import '../../widgets/my_text_field_widget.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF0F4F8),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 37,
            ),

            Row(
              children: [
                Expanded(
                  child: MyTextField(
                    label: 'Expiry',
                    hint: '12/12/2002',
                  ),
                ),
                SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: MyTextField(
                    label: 'CVV',
                    hint: '***',
                  ),
                ),
              ],
            ),

            // SizedBox(
            //   height: 16,
            // ),
            // TextFormField(
            //   decoration: InputDecoration(
            //     filled: true,
            //     fillColor: Colors.green,
            //     enabledBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(8),
            //     ),
            //     focusedBorder: OutlineInputBorder(
            //       borderSide: BorderSide(
            //         width: 3.0,
            //         color: Colors.red,
            //       ),
            //       borderRadius: BorderRadius.circular(8),
            //     ),
            //   ),
            // ),
            // SizedBox(
            //   height: 16,
            // ),
            // TextFormField(
            //   decoration: InputDecoration(
            //     // filled: true,
            //     // fillColor: Colors.green,
            //     enabledBorder: UnderlineInputBorder(
            //       borderRadius: BorderRadius.circular(8),
            //     ),
            //     focusedBorder: UnderlineInputBorder(
            //       borderSide: BorderSide(
            //         width: 3.0,
            //         color: Colors.red,
            //       ),
            //       borderRadius: BorderRadius.circular(8),
            //     ),
            //   ),
            // ),
            // TextFormField(
            //   decoration: InputDecoration(
            //     labelText: 'Password',
            //   ),
            // ),

            // Expanded(
            //   flex: 6,
            //   child: Container(
            //     color: Colors.red,
            //   ),
            // ),
            // Expanded(
            //   flex: 4,
            //   child: Container(
            //     color: kPrimaryColor,
            //   ),
            // ),
            // SizedBox(
            //   height: 12,
            // ),
            // Row(
            //   children: [
            //     Expanded(
            //       flex: 4,
            //       child: Container(
            //         height: 150,
            //         color: kPrimaryColor,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 12,
            //     ),
            //     Expanded(
            //       flex: 2,
            //       child: Container(
            //         height: 150,
            //         color: kSecondaryColor,
            //       ),
            //     ),
            //     SizedBox(
            //       width: 12,
            //     ),
            //     Expanded(
            //       flex: 2,
            //       child: Container(
            //         height: 150,
            //         color: kPrimaryColor,
            //       ),
            //     ),
            //   ],
            // ),

            // Stack(
            //   children: [
            //     Container(
            //       height: 150,
            //       width: Get.width,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(16),
            //         image: DecorationImage(
            //           image: AssetImage('assets/images/dummy_image.png'),
            //           fit: BoxFit.cover,
            //         ),
            //       ),
            //     ),
            //     Container(
            //       height: 150,
            //       width: Get.width,
            //       decoration: BoxDecoration(
            //         borderRadius: BorderRadius.circular(16),
            //         gradient: LinearGradient(
            //           begin: Alignment.centerLeft,
            //           end: Alignment.centerRight,
            //           stops: [0.35, 1.0],
            //           colors: [
            //             kPrimaryColor.withOpacity(0.83),
            //             kPrimaryColor.withOpacity(0),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // SizedBox(
            //   height: 20,
            // ),
            // ClipRRect(
            //   borderRadius: BorderRadius.circular(16),
            //   child: Image.asset(
            //     'assets/images/dummy_image.png',
            //     height: 150,
            //     fit: BoxFit.cover,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
