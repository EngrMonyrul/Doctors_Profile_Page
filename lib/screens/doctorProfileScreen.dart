import 'dart:ui';
import 'package:design_2/widgets/additionalInfo.dart';
import 'package:design_2/widgets/certificateArea.dart';
import 'package:design_2/widgets/educationArea.dart';
import 'package:design_2/widgets/experienceArea.dart';
import 'package:design_2/widgets/workExperienceTag.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../widgets/UpdateProfileEdit.dart';
import '../widgets/locationDetails.dart';
import '../widgets/tabBarItems.dart';
import '../widgets/upperEelements.dart';
import '../widgets/workExperienceSection.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    String status = 'active';
    Size bodySize = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            upperEelements(bodySize, context, status),
            const SizedBox(
              height: 180,
            ),
            UpdateProfileEdit(),
            const SizedBox(
              height: 30,
            ),
            const TabBarItems(),
            locationDetails(),
            const SizedBox(
              height: 30,
            ),
            workExperienceTag('My Work Experience'),
            // const SizedBox(
            //   height: 5,
            // ),
            workExperienceSection(),
            const SizedBox(
              height: 30,
            ),
            experienceArea(),
            const SizedBox(
              height: 30,
            ),
            workExperienceTag('Educations and Certifications'),
            educationArea(),
            const SizedBox(
              height: 20,
            ),
            certificateArea(),
            const SizedBox(
              height: 30,
            ),
            workExperienceTag('Additional Information'),
            additionalInfo(),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
