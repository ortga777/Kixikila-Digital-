import 'package:flutter/material.dart';

class CreateGroupScreen extends StatefulWidget {
  const CreateGroupScreen({super.key});

  @override
  State<CreateGroupScreen> createState() => _CreateGroupScreenState();
}

class _CreateGroupScreenState extends State<CreateGroupScreen> {
  final nameController = TextEditingController();
  final amountController = TextEditingController();

  void create() {
    print("Grupo criado: \${nameController.text}");
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Criar Grupo")),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(controller: nameController, decoration: const InputDecoration(labelText: "Nome")),
            TextField(controller: amountController, decoration: const InputDecoration(labelText: "Valor")),
            ElevatedButton(onPressed: create, child: const Text("Criar")),
          ],
        ),
      ),
    );
  }
}
