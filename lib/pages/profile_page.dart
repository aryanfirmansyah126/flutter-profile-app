import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // Data state profil
  String userName = 'Aryan Firmansyah';
  String role = 'Mahasiswa Software Engineering';

  final List<String> experiences = const [
    'Menguasai 7 Elements',
    'Bisa jalan di atas air dan api',
    'Mampu mengendalikan hujan badai',
    'Mahir ber bahasa hewan',
    'Pernah memadamkan hutan karhutla pada 2015',
    'Berpengalaman Memperbudak AI ',
  ];

  // Fungsi untuk menampilkan Form Dialog Edit Profil
  void _showEditDialog() {
    final nameController = TextEditingController(text: userName);
    final roleController = TextEditingController(text: role);

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Edit Profil'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'Nama Lengkap',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: roleController,
                decoration: const InputDecoration(
                  labelText: 'Role / Jabatan',
                  border: OutlineInputBorder(),
                ),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Batal'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  userName = nameController.text;
                  role = roleController.text;
                });
                Navigator.pop(context);
              },
              child: const Text('Simpan'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Pengguna'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const ProfileAvatar(),
            const SizedBox(height: 16),
            ProfileInfo(
              name: userName,
              role: role,
              onEditPressed: _showEditDialog,
            ),
            const SizedBox(height: 24),
            const ProfileStats(),
            const SizedBox(height: 24),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Keahlian Terpendam',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(),
            Expanded(
              child: ListView.builder(
                itemCount: experiences.length,
                itemBuilder: (context, index) {
                  return ExperienceCard(
                    title: experiences[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


// WIDGET: PROFILE AVATAR

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 50,
      backgroundColor: Colors.grey,
      child: Icon(Icons.person, size: 50, color: Colors.white),
    );
  }
}


// WIDGET: PROFILE INFO

class ProfileInfo extends StatelessWidget {
  final String name;
  final String role;
  final VoidCallback onEditPressed;

  const ProfileInfo({
    super.key,
    required this.name,
    required this.role,
    required this.onEditPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          role,
          style: TextStyle(fontSize: 16, color: Colors.grey[700]),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 16),
        ElevatedButton.icon(
          onPressed: onEditPressed,
          icon: const Icon(Icons.edit, size: 18),
          label: const Text('Edit Profil'),
        ),
      ],
    );
  }
}


// WIDGET: PROFILE STATS (EXTRACT WIDGET)

class ProfileStats extends StatelessWidget {
  const ProfileStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: Colors.blue[50],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          StatItem(count: '15', label: 'Proyek'),
          StatItem(count: '1.2K', label: 'Followers'),
          StatItem(count: '42', label: 'Following'),
        ],
      ),
    );
  }
}


// WIDGET: STAT ITEM (REUSABLE WIDGET)

class StatItem extends StatelessWidget {
  final String count;
  final String label;

  const StatItem({
    super.key,
    required this.count,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          count,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[600],
          ),
        ),
      ],
    );
  }
}


// WIDGET: EXPERIENCE CARD (EXTRACT WIDGET)

class ExperienceCard extends StatelessWidget {
  final String title;

  const ExperienceCard({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ListTile(
        leading: const Icon(Icons.auto_awesome, color: Colors.blueAccent),
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}