import 'package:flutter/material.dart';

class AdditionalInfoPage extends StatelessWidget {
  const AdditionalInfoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          final result = await Navigator.push<bool>(
            context,
            MaterialPageRoute(
              builder: (context) => const FullScreenDialog(),
            ),
          );

          print(result);
        },
        child: const Text('Диалог'),
      ),
    );
  }
}

class FullScreenDialog extends StatelessWidget {
  const FullScreenDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: const Text('Да'),
        ),
      ),
    );
  }
}
