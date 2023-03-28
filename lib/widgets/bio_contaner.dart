
import 'dart:html';

import 'package:flutter/material.dart';

class BioContainer extends StatelessWidget {
  const BioContainer({
    Key? key, required this.title, required this.subTitle, required this.preIcon, required this.onpressed, required this.trailingIcon,
  }) : super(key: key);
  final String title ,subTitle ;
  final IconData preIcon,trailingIcon;
 final void Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsetsDirectional.only(start: 5, end: 5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(5),
            boxShadow: [
              BoxShadow(
                color: Colors.black38,
                offset: Offset(0, 3),
                blurRadius: 3,
                spreadRadius: 3,
              ),
            ]),
        child: ListTile(
          leading: const Icon(Icons.phone_android),
          title:  Text(title),
          subtitle:  Text(subTitle),
          trailing: IconButton(
              onPressed: onpressed,
              icon: const Icon(Icons.call)),
        ));
  }
}