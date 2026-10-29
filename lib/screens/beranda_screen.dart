import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/mata_kuliah.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Data jadwal mata kuliah (variabel lokal tanpa garis bawah)
    final List<MataKuliah> jadwal = [
      MataKuliah(
        kode: 'CID201',
        nama: 'Pemrograman Web',
        sks: 3,
        hari: 'Senin',
      ),
      MataKuliah(kode: 'CID202', nama: 'Basis Data', sks: 3, hari: 'Selasa'),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Kampusku'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              DateFormat('EEEE, d MMMM y', 'id_ID').format(DateTime.now()),
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          for (final mk in jadwal)
            ListTile(
              leading: const Icon(Icons.class_),
              title: Text(mk.nama),
              subtitle: Text('${mk.kode} · ${mk.hari}'),
            ),
        ],
      ),
    );
  }
}
