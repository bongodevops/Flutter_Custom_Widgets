import 'package:flutter/material.dart';

void main() {
  runApp(const ContactListApp());
}

class ContactListApp extends StatelessWidget {
  const ContactListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contact List',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: const ContactListScreen(),
    );
  }
}

class Contact {
  final String name;
  final String phone;

  Contact({required this.name, required this.phone});
}

class ContactListScreen extends StatefulWidget {
  const ContactListScreen({super.key});

  @override
  State<ContactListScreen> createState() => _ContactListScreenState();
}

class _ContactListScreenState extends State<ContactListScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final List<Contact> _contacts = [];
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  void _addContact() {
    if (_formKey.currentState!.validate()) {
      setState(() {
        _contacts.add(
          Contact(
            name: _nameController.text.trim(),
            phone: _phoneController.text.trim(),
          ),
        );
        _nameController.clear();
        _phoneController.clear();
      });
      FocusScope.of(context).unfocus();
    }
  }

  Future<bool> _showDeleteConfirmation(int index) async {
    return await showDialog<bool>(
          context: context,
          builder:
              (context) => AlertDialog(
                title: const Text('Delete Contact'),
                content: Text('Delete ${_contacts[index].name}?'),
                actions: [
                  TextButton(
                    onPressed: () => Navigator.pop(context, false),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, true),
                    child: const Text(
                      'Delete',
                      style: TextStyle(color: Colors.red),
                    ),
                  ),
                ],
              ),
        ) ??
        false;
  }

  Future<void> _deleteContact(int index) async {
    final shouldDelete = await _showDeleteConfirmation(index);
    if (shouldDelete && mounted) {
      setState(() {
        _contacts.removeAt(index);
      });
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Contact deleted'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact List'), centerTitle: true),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: const InputDecoration(
                      labelText: 'Name',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.person),
                    ),
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter a name';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _phoneController,
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.phone),
                    ),
                    keyboardType: TextInputType.phone,
                    validator: (value) {
                      if (value == null || value.trim().isEmpty) {
                        return 'Please enter a phone number';
                      }
                      if (!RegExp(r'^[0-9]{10,}$').hasMatch(value)) {
                        return 'Enter a valid phone number (min 10 digits)';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton.icon(
                onPressed: _addContact,
                icon: const Icon(Icons.add),
                label: const Text('Add Contact'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 10),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Your Contacts',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child:
                  _contacts.isEmpty
                      ? const Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.contacts, size: 60, color: Colors.grey),
                            SizedBox(height: 16),
                            Text(
                              'No contacts yet',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      )
                      : ListView.builder(
                        itemCount: _contacts.length,
                        itemBuilder: (context, index) {
                          final contact = _contacts[index];
                          return Card(
                            elevation: 2,
                            margin: const EdgeInsets.symmetric(vertical: 6),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor:
                                    Colors.primaries[index %
                                        Colors.primaries.length],
                                child: Text(
                                  contact.name[0].toUpperCase(),
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ),
                              title: Text(
                                contact.name,
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              subtitle: Text(contact.phone),
                              trailing: IconButton(
                                icon: const Icon(
                                  Icons.delete,
                                  color: Colors.red,
                                ),
                                onPressed: () => _deleteContact(index),
                              ),
                              onLongPress: () => _deleteContact(index),
                            ),
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
