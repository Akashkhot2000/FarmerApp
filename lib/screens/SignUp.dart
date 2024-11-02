import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_structure/customComponent/CustomTextField.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

@RoutePage()
class SignUP extends StatelessWidget {
  const SignUP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.farmer_registration),
      ),
      body: Stack(
        children: [
          Opacity(
            opacity: 0.8,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bagroundimage.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Stack(
                    children: [
                      CircleAvatar(
                        radius: 80,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 8,
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25),
                              color: Colors.green),
                          child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.upload,
                              size: 30,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                        child: CustomTextField(
                          hintText: AppLocalizations.of(context)!.first_name,
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        child: CustomTextField(
                          hintText: AppLocalizations.of(context)!.last_name,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                      hintText: AppLocalizations.of(context)!.mobile_no),
                  SizedBox(height: 10),
                  CustomTextField(
                    hintText: AppLocalizations.of(context)!.address,
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    hintText: AppLocalizations.of(context)!.address,
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    hintText: AppLocalizations.of(context)!.city,
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    hintText: AppLocalizations.of(context)!.country,
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    hintText: AppLocalizations.of(context)!.zip_post,
                  ),
                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 60,
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            ),
          ),
          child: Text(
            AppLocalizations.of(context)!.register,
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
