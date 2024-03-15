import 'package:dev_task/ui/widgets/button_period_widget.dart';
import 'package:dev_task/ui/widgets/change_date_button.dart';
import 'package:dev_task/ui/widgets/textinput_meta_widget.dart';
import 'package:flutter/material.dart';

class PeridAddDialogWidget extends StatelessWidget {
  final meta1TextEditingController = TextEditingController();
  final meta2TextEditingController = TextEditingController();

  PeridAddDialogWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Nova Período',
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(),
          const SizedBox(height: 16),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xfff5f6f0),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Começa:',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      ChangeDateButton(
                        date: 'teste',
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Termina:',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      ChangeDateButton(
                        date: 'teste',
                        onPressed: () {},
                      ),
                    ],
                  ),
                  const Divider(),
                  TextinputMetaWidget(
                    label: 'Categoria',
                    textEditingController: meta1TextEditingController,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),
          TextinputMetaWidget(
            label: 'Meta 1',
            textEditingController: meta1TextEditingController,
          ),
          const SizedBox(height: 16),
          TextinputMetaWidget(
            label: 'Meta 2',
            textEditingController: meta2TextEditingController,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ButtonPeriodWidget(
                onPressed: () {
                  Navigator.pop(context);
                },
                label: 'Concluir',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
