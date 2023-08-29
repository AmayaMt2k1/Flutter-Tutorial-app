import 'package:flutter/material.dart';
import 'package:hakikat1/class/item_class.dart';
import 'package:hakikat1/core/constants.dart';

class DescriptionPage extends StatefulWidget {
  const DescriptionPage({
    super.key,
    required this.box,
  });

  final ItemClass box;

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {
  double FontSizeCustom = 25;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.box.title),
        backgroundColor: const Color.fromARGB(255, 175, 157, 206),
        actions: [
          IconButton(
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Snackbar'),
                  behavior: SnackBarBehavior.floating,
                ),
              );
            },
            icon: const Icon(Icons.info),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(kDouble10),
          child: Column(
            children: [
              Image.asset(widget.box.imagePath),
              Wrap(
                spacing: kDouble10,
                children: [
                  TextButton(
                    onPressed: () {
                      setState(() {
                        FontSizeCustom = 25;
                      });
                    },
                    child: const Text('Small Title'),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      setState(() {
                        FontSizeCustom = 35;
                      });
                    },
                    child: const Text('Medium Title'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        FontSizeCustom = 50;
                      });
                    },
                    child: const Text('Large Title'),
                  ),
                  FilledButton(
                    onPressed: () {
                      setState(() {
                        FontSizeCustom = 200;
                      });
                    },
                    child: const Text('Huge Title'),
                  ),
                ],
              ),
              FittedBox(
                child: Text(
                  widget.box.title,
                  style: TextStyle(
                    fontSize: FontSizeCustom,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                rocketDescription,
                style: TextStyle(
                  fontSize: 18,
                ),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(
                height: kDouble10,
              )
            ],
          ),
        ),
      ),
    );
  }
}
