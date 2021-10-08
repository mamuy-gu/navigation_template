import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class ChildrenPage extends StatelessWidget {
  const ChildrenPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: 10,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text('Задача $index'),
                onTap: () {
                  context.router.pushNamed('/labor/$index?serverCode=local');
                },
              );
            },
          ),
        ),
      ],
    );
  }
}