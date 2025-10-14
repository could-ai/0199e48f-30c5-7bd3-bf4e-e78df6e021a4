import 'package:flutter/material.dart';

class ComponentLibraryPanel extends StatelessWidget {
  const ComponentLibraryPanel({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> components = [
      'Resistor', 'Capacitor', 'Inductor', 'Diode', 'LED', 
      'Transistor', 'MOSFET', 'Op-Amp', 'Voltage Regulator', 
      'Microcontroller', 'Connector', 'Switch', 'Fuse'
    ];

    return Container(
      width: 250,
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        border: Border(
          right: BorderSide(color: Colors.grey.withOpacity(0.5), width: 1),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Components...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
          ),
          const Divider(),
          Expanded(
            child: ListView.builder(
              itemCount: components.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.memory), // Placeholder icon
                  title: Text(components[index]),
                  onTap: () {
                    // Placeholder for drag-and-drop or selection logic
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
