import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:navigation_template/widgets/app_drawer.dart';

class LaborJournalPage extends StatelessWidget {
  const LaborJournalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const AppDrawer(),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 50,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Задача $index'),
                  onTap: () {
                    context.router.pushNamed('/labor/$index/attachment?serverCode=local');
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
