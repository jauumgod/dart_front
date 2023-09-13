import 'package:dart_front/src/Components/my_button.dart';
import 'package:dart_front/src/Pages/routes/add_itempage.dart';
import 'package:flutter/material.dart';

import '../../Components/input_text.dart';

class AddTitleListName extends StatelessWidget {
  const AddTitleListName({super.key});

  @override
  Widget build(BuildContext context) {
    final _nameItemListController = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            const SizedBox(height: 20),
            CustomTextField(
              icon: Icons.list_alt_rounded,
              label: "Nome da lista",
              controller: _nameItemListController,
            ),
            MyButton(
                onTap: () {
                  return const AddProdutosPage();
                },
                buttonname: "Criar")
          ],
        ),
      ),
    );
  }
}
