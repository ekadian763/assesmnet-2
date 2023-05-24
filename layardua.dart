import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import 'utama.dart';

class LayarDua extends StatelessWidget {
  final FormData formData;

  LayarDua({required this.formData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hasil Data'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Nama: ${formData.textFieldDataName}'),
          Text('Prodi: ${formData.textFieldDataDesc}'),
          Text('Fakultas: ${formData.textFieldDataPrice}'),
          Text('Keperluan Peminjaman Kendaraan: ${formData.textFieldDataOne}'),
          Text('Jenis Kendaraan: ${formData.radioOptionData1}'),
          Text('Durasi peminjaman kendaraan: ${formData.radioOptionData2}'),
          //Text('Menerima retur: ${formData.checkboxData2}'),
          Text("Dikerjakan oleh: 6701213087-Eka Dian Wananda")
        ],
      ),
    );
  }
}
