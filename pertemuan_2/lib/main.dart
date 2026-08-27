import 'package:flutter/material.dart';

void main() => runApp(const MateriApp());

class MateriApp extends StatelessWidget {
  const MateriApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: KartuProfil());
  }
}

class KartuProfil extends StatelessWidget {
  const KartuProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profil')),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 48,
                backgroundImage: AssetImage(
                  'assets/foto_AIS.jpeg',
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Miftahul Fauzan',
                style: Theme.of(context).textTheme.headlineSmall,
              ),
              const SizedBox(height: 8),
              const Text(
                'Mahasiswa Semester 5 Program Studi Informatika Fakultas Teknik Universitas Mulawarman.',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: null,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(Icons.email),
                          const Text('miftahulfauzan@unmul.ac.id')
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: null,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(Icons.code),
                          const Text('Github : mfthfzn'),
                        ],
                      )
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: null,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(Icons.phone),
                          const Text('Tel: 0812-3456-7890'),
                        ],
                      ) 
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}