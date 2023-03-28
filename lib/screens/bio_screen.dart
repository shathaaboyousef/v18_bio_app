// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:v18_bio_app/widgets/bio_card.dart';
import 'package:v18_bio_app/widgets/bio_contaner.dart';
import 'package:v18_bio_app/extinstions/context_extension.dart';

class BioScreen extends StatelessWidget {
  const BioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text('BIO'),
        centerTitle: true,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: const LinearGradient(
            begin: AlignmentDirectional.topStart,
            end: AlignmentDirectional.bottomEnd,
            colors: [
              Colors.blue,
              Colors.pink,
            ],
          ),
        ),
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            const CircleAvatar(
              radius: 60,
              //  backgroundColor: Colors.purple,
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRAId4dBX6XrGBqvZTufl0_p5YrHSesGR9sLpzWBzKku5MvAnrCJE0AABo-cbJmUg9-2J0&usqp=CAU'),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Shatha Nadir  ',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const Divider(
              indent: 30,
              endIndent: 30,
            ),
            BioCard(
              title: "Email",
              subTitle: "Shathaaboyo18@gmail.com",
              preIcon: Icons.email,
              onpressed: () {
                context.showSnakBar(massage: 'Send Email', error: false);
              },
            ),
            BioContainer(
                title: 'Phone',
                subTitle: "0592085724",
                preIcon: Icons.phone_android,
                onpressed: () {
                  print("call me");
                  context.showSnakBar(massage: 'Call phone', error: false);
                },
                trailingIcon: Icons.call),
          ],
        ),
      ),
    );
  }
}
