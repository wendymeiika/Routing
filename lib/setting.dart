import 'package:flutter/material.dart';

class Setting extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Column(children: [
        Center(
          child: Text(
            "INFORMATION\n\n,"
            "LOREM\n"
            "(Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam id iaculis sapien, ac bibendum dolor. Suspendisse rutrum mauris est, imperdiet congue dui suscipit nec. Suspendisse potenti. Vestibulum consectetur faucibus lacus, volutpat rhoncus neque dapibus a. Nunc consectetur nibh dui, sed semper massa consequat non. Cras lobortis molestie velit, sit amet aliquet magna accumsan a. Aliquam mollis eros at nisl luctus interdum et luctus sapien. Aliquam sed vestibulum nulla, eu porttitor ante. Aliquam turpis tellus, vestibulum ut posuere id, cursus eget neque. Etiam malesuada ligula odio, nec egestas leo bibendum vel. Phasellus iaculis nisi nulla, id tempor dolor porttitor vulputate. Donec in mauris porttitor, congue ipsum vitae, porta velit.)\n",
          ),
        ),
      ]),
    );
  }
}
