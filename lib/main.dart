import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  ///
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Drag & Drop Digits Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true),
      home: const DigitDragDropPage(),
    );
  }
}

class DigitDragDropPage extends StatefulWidget {
  const DigitDragDropPage({super.key});

  @override
  State<DigitDragDropPage> createState() => _DigitDragDropPageState();
}

class _DigitDragDropPageState extends State<DigitDragDropPage> {
  final TextEditingController _controller = TextEditingController();

  ///
  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  ///
  Widget _buildCard(String digit, double opacity) {
    return Opacity(
      opacity: opacity,
      child: Container(
        width: 64,
        height: 90,
        margin: const EdgeInsets.all(4),
        decoration: BoxDecoration(
          color: Colors.blueAccent,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [BoxShadow(color: Colors.black.withValues(alpha: 0.3), blurRadius: 4, offset: const Offset(2, 2))],
        ),
        alignment: Alignment.center,
        child: Text(digit, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white)),
      ),
    );
  }

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('数字カード Drag & Drop')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            DragTarget<String>(
              builder: (context, candidate, rejected) {
                return TextField(
                  controller: _controller,
                  readOnly: true,
                  decoration: InputDecoration(
                    labelText: 'ここにカードをドロップ',
                    border: const OutlineInputBorder(),
                    filled: candidate.isNotEmpty,
                    fillColor: candidate.isNotEmpty ? Colors.lightBlue.withValues(alpha: 0.2) : null,
                  ),
                );
              },
              onAcceptWithDetails:
                  (DragTargetDetails<String> details) => setState(() => _controller.text += details.data),
            ),
            const SizedBox(height: 24),

            Wrap(
              alignment: WrapAlignment.center,
              children: List.generate(10, (index) {
                final digit = index.toString();

                return Draggable<String>(
                  data: digit,
                  feedback: Material(color: Colors.transparent, child: _buildCard(digit, 0.8)),
                  childWhenDragging: _buildCard(digit, 0.3),
                  child: _buildCard(digit, 1.0),
                );
              }),
            ),

            const SizedBox(height: 24),

            ElevatedButton.icon(
              onPressed: () => setState(_controller.clear),
              icon: const Icon(Icons.clear),
              label: const Text('リセット'),
            ),
          ],
        ),
      ),
    );
  }
}
