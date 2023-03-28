import 'package:flutter/material.dart';


class BioCard extends StatelessWidget {
  const BioCard({
    Key? key, required this.title, required this.subTitle, required this.preIcon, required this.onpressed,
  }) : super(key: key);
final String title ,subTitle ;
final IconData preIcon;
final void Function() onpressed;
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Container(
              width: 30,
              height: 30,
              child: Icon(preIcon),
            ),
            SizedBox(width: 15,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                Text(subTitle, style: TextStyle(fontSize: 14),),

              ],
            ),
            Spacer(),
            IconButton(
              onPressed: onpressed,
                icon: Icon(Icons.send,size:18)),
          ],
        ),
      ),
    );
  }
}