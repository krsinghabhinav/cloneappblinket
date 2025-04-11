import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  final _formKey = GlobalKey<FormState>();

  String name = '';
  String phone = '';
  String selectedPayment = 'Cash on Delivery';
  List<String> addresses = ["dfdgdgdfgd", "gdgdsgdsgdgd", "gfsgssgs"];
  final addressController = TextEditingController();

  final List<String> paymentOptions = [
    'Cash on Delivery',
    'UPI',
    'Credit/Debit Card',
    'Net Banking',
  ];

  void _addAddress() {
    final address = addressController.text.trim();
    if (address.isNotEmpty) {
      setState(() {
        addresses.add(address);
        addressController.clear();
      });
    }
  }

  void _removeAddress(int index) {
    setState(() {
      addresses.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text("Registration Page"),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          elevation: 8,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Personal Details",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 16),

                  TextFormField(
                    decoration: const InputDecoration(labelText: 'Full Name'),
                    onChanged: (val) => name = val,
                  ),
                  const SizedBox(height: 12),

                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: 'Phone Number',
                    ),
                    keyboardType: TextInputType.phone,
                    onChanged: (val) => phone = val,
                  ),
                  const SizedBox(height: 12),

                  DropdownButtonFormField<String>(
                    value: selectedPayment,
                    items:
                        paymentOptions
                            .map(
                              (option) => DropdownMenuItem(
                                value: option,
                                child: Text(option),
                              ),
                            )
                            .toList(),
                    onChanged: (val) => setState(() => selectedPayment = val!),
                    decoration: const InputDecoration(
                      labelText: 'Payment Preference',
                    ),
                  ),

                  const SizedBox(height: 24),
                  const Text(
                    "Delivery Addresses",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),

                  const SizedBox(height: 8),
                  TextFormField(
                    controller: addressController,
                    decoration: InputDecoration(
                      labelText: 'Add New Address',
                      suffixIcon: IconButton(
                        icon: const Icon(Icons.add_location_alt),
                        onPressed: _addAddress,
                      ),
                    ),
                  ),

                  const SizedBox(height: 12),
                  ...addresses.map((addr) {
                    int index = addresses.indexOf(addr);
                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 6),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ListTile(
                        leading: const Icon(
                          Icons.location_on,
                          color: Colors.deepOrange,
                        ),
                        title: Text(addr),
                        trailing: IconButton(
                          icon: const Icon(
                            Icons.delete,
                            color: Colors.redAccent,
                          ),
                          onPressed: () => _removeAddress(index),
                        ),
                      ),
                    );
                  }),

                  const SizedBox(height: 20),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // You can save or process the registration here
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text("Registration Submitted"),
                            ),
                          );
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.deepOrange,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30,
                          vertical: 14,
                        ),
                      ),
                      child: const Text(
                        "Register",
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
