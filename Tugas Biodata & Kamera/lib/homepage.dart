import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'biodataservice.dart';
import 'camerapage.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Biodataservice? service;
  String? selectedDocId;

  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController addressController = TextEditingController();

  @override
  void initState() {
    service = Biodataservice(db: FirebaseFirestore.instance);
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    ageController.dispose();
    addressController.dispose();
    super.dispose();
  }

  void _saveOrUpdateData() {
    final name = nameController.text.trim();
    final age = ageController.text.trim();
    final address = addressController.text.trim();

    if (name.isEmpty || age.isEmpty || address.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("harap isi semua kolom")),
      );
      return;
    }

    if (selectedDocId != null) {
      print("update data untuk id: $selectedDocId");
      service?.update(selectedDocId!, {'name': name, 'age': age, 'address': address});
    } else {
      print("menambahkan data baru");
      service?.add({'name': name, 'age': age, 'address': address});
    }

    nameController.clear();
    ageController.clear();
    addressController.clear();
    selectedDocId = null;
    setState(() {}); // supaya ui diperbarui
  }

  Future<void> _openCamera() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const CameraPage()),
    );

    if (result == true) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("data biodata")),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                controller: nameController,
                decoration: const InputDecoration(
                  labelText: 'nama',
                  prefixIcon: Icon(Icons.person),
                  border: OutlineInputBorder(),
                  filled: true,
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: ageController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'usia',
                  prefixIcon: Icon(Icons.numbers),
                  border: OutlineInputBorder(),
                  filled: true,
                ),
              ),
              const SizedBox(height: 8),
              TextField(
                controller: addressController,
                decoration: const InputDecoration(
                  labelText: 'alamat',
                  prefixIcon: Icon(Icons.location_on),
                  border: OutlineInputBorder(),
                  filled: true,
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: StreamBuilder(
                  stream: service?.getBiodata(),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    } else if (snapshot.hasError) {
                      return Text("terjadi kesalahan: ${snapshot.error}");
                    } else if (!snapshot.hasData || snapshot.data?.docs.isEmpty == true) {
                      return const Text("tidak ada biodata tersedia");
                    }

                    final documents = snapshot.data?.docs;

                    return ListView.builder(
                      itemCount: documents?.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(documents?[index]['name']),
                          subtitle: Text("usia: ${documents?[index]['age']}"),
                          onTap: () {
                            setState(() {
                              nameController.text = documents?[index]['name'];
                              ageController.text = documents?[index]['age'];
                              addressController.text = documents?[index]['address'];
                              selectedDocId = documents?[index].id;
                              print("dokumen yang dipilih: $selectedDocId"); // cek di debug console
                            });
                          },
                          trailing: IconButton(
                            onPressed: () {
                              if (documents?[index].id != null) {
                                service?.delete(documents![index].id);
                              }
                            },
                            icon: const Icon(Icons.delete),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: _openCamera,
            child: const Icon(Icons.camera_alt),
          ),
          const SizedBox(height: 8),
          FloatingActionButton(
            onPressed: _saveOrUpdateData,
            child: const Icon(Icons.save),
          ),
        ],
      ),
    );
  }
}
