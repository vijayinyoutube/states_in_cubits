import 'package:flutter/material.dart';

import '../../Components/spacer.dart';
import '../Widgets/btn.dart';
import '../Widgets/text_field.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: buildInitialLayout(),
      ),
    );
  }

  Widget buildInitialLayout() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          InputField(textEditingController: _textEditingController),
          const HeightSpacer(myHeight: 15.00),
          BtnWidget(txtData: "Submit", myFunction: () => submitData())
        ],
      );

  Widget buildLoading() => const CircularProgressIndicator();

  Widget buildLoadedLayout() => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Your Data"),
          const HeightSpacer(myHeight: 15.00),
          BtnWidget(txtData: "Back", myFunction: () => navBack())
        ],
      );

  Widget buildErrorLayout() => const Text("Something went wrong!");

  void submitData() {
    debugPrint(_textEditingController.text);
  }

  void navBack() {
    debugPrint("Nav Back");
  }
}
