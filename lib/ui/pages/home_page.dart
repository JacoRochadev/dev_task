import 'package:dev_task/ui/widgets/button_period_widget.dart';
import 'package:dev_task/ui/widgets/edit_photo_widget.dart';
import 'package:dev_task/ui/widgets/list_tile_widget.dart';
import 'package:dev_task/ui/widgets/logoff_widget.dart';
import 'package:dev_task/ui/widgets/text_field_custom_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                TextFieldCustomWidget(
                  label: 'Apelido',
                  controller: textEditingController,
                ),
                const SizedBox(
                  width: 14,
                ),
                const EditPhotoWidget(),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: Divider(
                color: Color(0xffd9d9d9),
              ),
            ),
            const Text(
              'Períodos',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color(0xfff5f6f0),
                ),
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) {
                    return const ListTileWidget();
                  },
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ButtonPeriodWidget(
              label: 'Adicionar Período',
              onPressed: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            LogoffWidget(
              name: 'João',
              logoff: 'Sair',
              logoffPress: () {},
            )
          ],
        ),
      ),
    );
  }
}
