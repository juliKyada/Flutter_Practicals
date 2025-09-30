import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

/// Practical 6: Notes App (Persistent Storage)
class Practical6NotesApp extends StatefulWidget {
  const Practical6NotesApp({super.key});

  @override
  State<Practical6NotesApp> createState() => _Practical6NotesAppState();
}

class _Practical6NotesAppState extends State<Practical6NotesApp> {
  late SharedPreferences _prefs;
  List<String> _notes = <String>[];
  final TextEditingController _noteController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadNotes();
  }

  Future<void> _loadNotes() async {
    _prefs = await SharedPreferences.getInstance();
    setState(() {
      _notes = _prefs.getStringList('notes') ?? <String>[];
    });
  }

  Future<void> _saveNotes() async {
    await _prefs.setStringList('notes', _notes);
  }

  void _addNote() {
    if (_noteController.text.isNotEmpty) {
      setState(() {
        _notes.add(_noteController.text);
        _noteController.clear();
        _saveNotes();
      });
    }
  }

  void _deleteNote(int index) {
    setState(() {
      _notes.removeAt(index);
      _saveNotes();
    });
  }

  @override
  void dispose() {
    _noteController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Practical 6: Notes App',
          style: Theme.of(context).appBarTheme.titleTextStyle?.copyWith(
            fontSize: 20,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
        backgroundColor: Theme.of(context).colorScheme.surface,
        foregroundColor: Theme.of(context).colorScheme.onSurface,
        elevation: 0,
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _noteController,
                    decoration: const InputDecoration(
                      hintText: 'Enter new note...',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                ElevatedButton(onPressed: _addNote, child: const Text('Add')),
              ],
            ),
          ),
          Expanded(
            child: _notes.isEmpty
                ? const Center(child: Text('No notes yet!'))
                : ListView.builder(
                    itemCount: _notes.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(_notes[index]),
                        trailing: IconButton(
                          icon: const Icon(Icons.delete, color: Colors.red),
                          onPressed: () => _deleteNote(index),
                        ),
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
