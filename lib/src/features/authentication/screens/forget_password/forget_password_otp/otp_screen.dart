import 'package:flutter/material.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:this_time/src/constants/sizes.dart';
import 'package:this_time/src/constants/text_strings.dart';
import 'package:this_time/src/features/authentication/controllers/otp_controller.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var otpController = Get.put(OTPController());
    var otp;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefaultSize),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(tOtpTitle,style: GoogleFonts.montserrat(
              fontWeight: FontWeight.bold,
              fontSize: 70.0,
             ),
            ),
            Text(tOtpSubTitle.toUpperCase(),style: Theme.of(context).textTheme.headline6,),
            const SizedBox(height: 40.0),
            Text("$tOtpMessage + support akhilreddykonreddy@gmail.com",textAlign: TextAlign.center,),
            SizedBox(height: 20.0),
            OtpTextField(
              numberOfFields: 6,
              fillColor: Colors.black.withOpacity(0.1),
              filled: true,
              keyboardType: TextInputType.number,
              onSubmit: (code) {
                otp = code;
                OTPController.instance.verifyOTP(otp);
                },
            ),
            SizedBox(height: 20.0,),
            SizedBox(
              width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      OTPController.instance.verifyOTP(otp);
                    },
                    child: Text(tNext),
                )
            ),




          ],
        ),
      ),
    );
  }
}
