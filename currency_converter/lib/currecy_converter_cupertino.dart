import 'package:flutter/cupertino.dart';

class CurrecyConverterCupertinoPage extends StatefulWidget {
  const CurrecyConverterCupertinoPage({super.key});

  @override
  State<CurrecyConverterCupertinoPage> createState() =>
      _CurrecyConverterCupertinoPage();
}

class _CurrecyConverterCupertinoPage
    extends State<CurrecyConverterCupertinoPage> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert() {
    result = double.parse(textEditingController.text) * 83;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemGrey3,
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.systemGrey3,
        middle: Text('Currency Converter App'),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'INR ${result != 0 ? result.toStringAsFixed(3) : result.toStringAsFixed(0)}',
                style: const TextStyle(
                  fontSize: 75,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
              ),

              //padding or container
              CupertinoTextField(
                controller: textEditingController,
                style: const TextStyle(color: CupertinoColors.black),
                decoration: BoxDecoration(
                  color: CupertinoColors.white,
                  border: Border.all(),
                  borderRadius: BorderRadius.circular(5),
                ),
                placeholder: 'Please enter the amount in usd',
                prefix: const Icon(CupertinoIcons.money_dollar),
                keyboardType: const TextInputType.numberWithOptions(
                  decimal: true,
                ),
              ),
              const SizedBox(height: 10),
              //butten two types
              //raised
              //appears like a text button
              CupertinoButton(
                onPressed: convert,
                color: CupertinoColors.black,

                child: const Text('Convert'),
              ),
              // ✅ Moved outside the style
            ],
          ),
        ),
      ),
    );
  }
}
