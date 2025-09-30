import 'package:flutter/material.dart';

// Practical 2: Simple Temperature Converter
class Practical2TemperatureConverter extends StatefulWidget {
  const Practical2TemperatureConverter({super.key});

  @override
  State<Practical2TemperatureConverter> createState() => _Practical2TemperatureConverterState();
}

class _Practical2TemperatureConverterState extends State<Practical2TemperatureConverter> {
  final TextEditingController celsiusController = TextEditingController();
  final TextEditingController fahrenheitController = TextEditingController();

  void convertFromCelsius() {
    if (celsiusController.text.isNotEmpty) {
      double celsius = double.tryParse(celsiusController.text) ?? 0;
      double fahrenheit = (celsius * 9 / 5) + 32;
      fahrenheitController.text = fahrenheit.toStringAsFixed(1);
    } else {
      fahrenheitController.clear();
    }
  }

  void convertFromFahrenheit() {
    if (fahrenheitController.text.isNotEmpty) {
      double fahrenheit = double.tryParse(fahrenheitController.text) ?? 0;
      double celsius = (fahrenheit - 32) * 5 / 9;
      celsiusController.text = celsius.toStringAsFixed(1);
    } else {
      celsiusController.clear();
    }
  }

  void clearAll() {
    celsiusController.clear();
    fahrenheitController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Temperature Converter'),
        backgroundColor: Colors.orange,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Icon(
              Icons.thermostat,
              size: 80,
              color: Colors.orange,
            ),
            const SizedBox(height: 20),
            const Text(
              'Temperature Converter',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 30),
            
            // Celsius Input
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Text(
                      'Celsius (°C)',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: celsiusController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: 'Enter Celsius',
                        border: OutlineInputBorder(),
                        suffixText: '°C',
                      ),
                      onChanged: (value) => convertFromCelsius(),
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 20),
            
            const Icon(Icons.swap_vert, size: 40, color: Colors.blue),
            
            const SizedBox(height: 20),
            
            // Fahrenheit Input
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    const Text(
                      'Fahrenheit (°F)',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),
                    TextField(
                      controller: fahrenheitController,
                      keyboardType: TextInputType.number,
                      decoration: const InputDecoration(
                        hintText: 'Enter Fahrenheit',
                        border: OutlineInputBorder(),
                        suffixText: '°F',
                      ),
                      onChanged: (value) => convertFromFahrenheit(),
                    ),
                  ],
                ),
              ),
            ),
            
            const SizedBox(height: 30),
            
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: clearAll,
                icon: const Icon(Icons.clear),
                label: const Text('Clear All'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),
            
            const SizedBox(height: 30),
            
            // Quick Reference
            Card(
              color: Colors.grey[100],
              child: const Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  children: [
                    Text(
                      'Quick Reference',
                      style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text('Freezing'),
                            Text('0°C = 32°F'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Room Temp'),
                            Text('20°C = 68°F'),
                          ],
                        ),
                        Column(
                          children: [
                            Text('Boiling'),
                            Text('100°C = 212°F'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
