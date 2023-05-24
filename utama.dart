import 'layardua.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class FormData {
  String textFieldDataName;
  String textFieldDataDesc;
  String textFieldDataPrice;
  String textFieldDataOne;
  String radioOptionData1;
  String radioOptionData2;

  FormData(
      {required this.textFieldDataName,
      required this.textFieldDataDesc,
      required this.textFieldDataPrice,
      required this.textFieldDataOne,
      required this.radioOptionData1,
      required this.radioOptionData2,
      });
}

class utama extends StatefulWidget {
  @override
  State<utama> createState() => _utamaState();
}

class _utamaState extends State<utama> {
  TextEditingController _textFieldController1 = TextEditingController();
  TextEditingController _textFieldController2 = TextEditingController();
  TextEditingController _textFieldController3 = TextEditingController();
  TextEditingController _textFieldController4 = TextEditingController();
  String _selectedRadioOption1 = '';
  String _selectedRadioOption2 = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 100, left: 25, right: 25, bottom: 15),
            child: SizedBox(
              width: 500,
              child: TextField(
                controller: _textFieldController1,
                decoration: InputDecoration(
                    labelText: 'Nama', border: OutlineInputBorder()),
                keyboardType: TextInputType.multiline,
                minLines: 1, // <-- SEE HERE
                maxLines: 2, // <-- SEE HERE
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
            child: SizedBox(
              width: 500,
              child: TextField(
                controller: _textFieldController2,
                decoration: InputDecoration(
                    labelText: 'Prodi', border: OutlineInputBorder()),
                keyboardType: TextInputType.multiline,
                minLines: 1, // <-- SEE HERE
                maxLines: 2, // <-- SEE HERE
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 15),
            child: SizedBox(
              width: 500,
              child: TextField(
                controller: _textFieldController3,
                decoration: InputDecoration(
                    labelText: 'Fakultas', border: OutlineInputBorder()),
                keyboardType: TextInputType.multiline,
                minLines: 1, // <-- SEE HERE
                maxLines: 2, // <-- SEE HERE
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
            child: SizedBox(
              width: 500,
              child: TextField(
                controller: _textFieldController4,
                decoration: InputDecoration(
                    labelText: 'Keperluan Peminjaman Kendaraan', border: OutlineInputBorder()),
                keyboardType: TextInputType.multiline,
                minLines: 3, // <-- SEE HERE
                maxLines: 8, // <-- SEE HERE
              ),
            ),
          ),
          Row(
            children: [
              Text(
                "Jenis Kendaraan",
                style: TextStyle(fontSize: 11),
              ),
              Divider(),
            ],
          ),
          RadioListTile(
            title: Text("Avanza/Xenia"),
            value: "Avanza/Xenia",
            groupValue: _selectedRadioOption1,
            onChanged: (String? newValue) {
              setState(() {
                _selectedRadioOption1 = newValue ?? '';
              });
            },
          ),
          RadioListTile(
            title: Text("ELF"),
            value: "ELF",
            groupValue: _selectedRadioOption1,
            onChanged: (String? newValue) {
              setState(() {
                _selectedRadioOption1 = newValue ?? '';
              });
            },
          ),
          Row(
            children: [
              Text(
                "Durasi Peminjaman Kendaraan",
                style: TextStyle(fontSize: 11),
              ),
              Divider(),
            ],
          ),
          RadioListTile(
            title: Text("12 jam"),
            value: "12 jam",
            groupValue: _selectedRadioOption2,
            onChanged: (String? newValue) {
              setState(() {
                _selectedRadioOption2 = newValue ?? '';
              });
            },
          ),
          RadioListTile(
            title: Text("18 jam"),
            value: "18 jam",
            groupValue: _selectedRadioOption2,
            onChanged: (String? newValue) {
              setState(() {
                _selectedRadioOption2 = newValue ?? '';
              });
            },
          ),
         
          
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: MaterialButton(
              minWidth: double.infinity,
              height: 48, // Ubah tinggi sesuai kebutuhan
              onPressed: () {
                FormData formData = FormData(
                  textFieldDataName: _textFieldController1.text,
                  textFieldDataDesc: _textFieldController2.text,
                  textFieldDataPrice: _textFieldController3.text,
                  textFieldDataOne: _textFieldController4.text,
                  radioOptionData1: _selectedRadioOption1,
                  radioOptionData2: _selectedRadioOption2,
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LayarDua(formData: formData),
                  ),
                );
              },
              child: Text(
                'KIRIM PERMINTAAN',
                style: TextStyle(fontSize: 19, color: Colors.white),
              ),
              color: Colors.teal,
              textColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
