import 'package:flutter/material.dart';

/// Practical 2: Temperature Converter App
class Practical2TemperatureConverterApp extends StatefulWidget {
  const Practical2TemperatureConverterApp({super.key});

  @override
  State<Practical2TemperatureConverterApp> createState() =>
      _Practical2TemperatureConverterAppState();
}

class _Practical2TemperatureConverterAppState
    extends State<Practical2TemperatureConverterApp> {
  final TextEditingController _celsiusController = TextEditingController();
  final TextEditingController _fahrenheitController = TextEditingController();
  double? _celsius;
  double? _fahrenheit;

  // Flag to prevent infinite loops when programmatically setting controller text
  bool _isConverting = false;

  @override
  void dispose() {
    _celsiusController.dispose();
    _fahrenheitController.dispose();
    super.dispose();
  }

  void _convertFromCelsius() {
    if (_isConverting) return; // Prevent re-entry
    setState(() {
      _isConverting = true; // Set flag
      final String text = _celsiusController.text;
      if (text.isEmpty) {
        _celsius = null;
        _fahrenheit = null;
        _fahrenheitController.clear();
      } else {
        final double? celsiusValue = double.tryParse(text);
        if (celsiusValue != null) {
          _celsius = celsiusValue;
          _fahrenheit = (celsiusValue * 9 / 5) + 32;
          _fahrenheitController.text = _fahrenheit!.toStringAsFixed(2);
        } else {
          _celsius = null;
          _fahrenheit = null;
          _fahrenheitController.text = 'Invalid Input';
        }
      }
      _isConverting = false; // Reset flag
    });
  }

  void _convertFromFahrenheit() {
    if (_isConverting) return; // Prevent re-entry
    setState(() {
      _isConverting = true; // Set flag
      final String text = _fahrenheitController.text;
      if (text.isEmpty) {
        _fahrenheit = null;
        _celsius = null;
        _celsiusController.clear();
      } else {
        final double? fahrenheitValue = double.tryParse(text);
        if (fahrenheitValue != null) {
          _fahrenheit = fahrenheitValue;
          _celsius = (fahrenheitValue - 32) * 5 / 9;
          _celsiusController.text = _celsius!.toStringAsFixed(2);
        } else {
          _fahrenheit = null;
          _celsius = null;
          _celsiusController.text = 'Invalid Input';
        }
      }
      _isConverting = false; // Reset flag
    });
  }

  void _clearFields() {
    setState(() {
      _celsiusController.clear();
      _fahrenheitController.clear();
      _celsius = null;
      _fahrenheit = null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Practical 2: Temperature Converter',
          style: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
            fontSize: 20,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              'Enter temperature in Celsius or Fahrenheit to convert:',
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 30.0),
            TextField(
              controller: _celsiusController,
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              decoration: const InputDecoration(
                labelText: 'Celsius',
                border: OutlineInputBorder(),
                suffixText: '°C',
              ),
              onChanged: (String value) {
                _convertFromCelsius();
              },
            ),
            const SizedBox(height: 20.0),
            Row(
              children: <Widget>[
                const Expanded(child: Divider()),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Icon(
                    Icons.compare_arrows,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                const Expanded(child: Divider()),
              ],
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _fahrenheitController,
              keyboardType: const TextInputType.numberWithOptions(
                decimal: true,
              ),
              decoration: const InputDecoration(
                labelText: 'Fahrenheit',
                border: OutlineInputBorder(),
                suffixText: '°F',
              ),
              onChanged: (String value) {
                _convertFromFahrenheit();
              },
            ),
            const SizedBox(height: 20.0),
            // Display the numerical values to "use" them and satisfy the linter
            Text(
              _celsius != null
                  ? 'Calculated Celsius: ${_celsius!.toStringAsFixed(2)}°C'
                  : 'Enter a value to see calculation',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 8.0),
            Text(
              _fahrenheit != null
                  ? 'Calculated Fahrenheit: ${_fahrenheit!.toStringAsFixed(2)}°F'
                  : '',
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
            const SizedBox(height: 30.0),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: _clearFields,
                icon: const Icon(Icons.clear),
                label: Text(
                  'Clear',
                  style: Theme.of(
                    context,
                  ).textTheme.labelLarge?.copyWith(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
