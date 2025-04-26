import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../controllers/controllers_mixin.dart';
import '../extensions/extensions.dart';
import 'parts/drop_digits_overlay.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> with ControllersMixin<HomeScreen> {
  final List<OverlayEntry> _firstEntries = <OverlayEntry>[];
  final List<OverlayEntry> _secondEntries = <OverlayEntry>[];

  final TextEditingController inputDigitsEditingController = TextEditingController();

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                //----------------------------------// 1
                appParamNotifier.setFirstOverlayParams(firstEntries: _firstEntries);

                addFirstOverlay(
                  context: context,
                  setStateCallback: setState,
                  width: MediaQuery.of(context).size.width * 0.6,
                  height: 250,
                  color: Colors.blueGrey.withOpacity(0.3),
                  initialPosition: Offset(MediaQuery.of(context).size.width * 0.4, 160),

                  widget: Column(
                    children: <Widget>[
                      DragTarget<String>(
                        // ignore: strict_raw_type, always_specify_types
                        builder: (BuildContext context, List<String?> candidate, List rejected) {
                          return TextField(
                            controller: inputDigitsEditingController,
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
                            (DragTargetDetails<String> details) =>
                                setState(() => inputDigitsEditingController.text += details.data),
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            onPressed: () {
                              //----------------------------------// 2

                              appParamNotifier.setSecondOverlayParams(secondEntries: _secondEntries);

                              addSecondOverlay(
                                context: context,
                                secondEntries: _secondEntries,
                                setStateCallback: setState,
                                width: context.screenSize.width,
                                height: context.screenSize.height * 0.3,
                                color: Colors.blueGrey.withOpacity(0.3),
                                initialPosition: Offset(0, context.screenSize.height * 0.7),

                                widget: Wrap(
                                  alignment: WrapAlignment.center,
                                  // ignore: always_specify_types
                                  children: List.generate(10, (index) {
                                    final String digit = index.toString();

                                    return Draggable<String>(
                                      data: digit,
                                      feedback: Material(color: Colors.transparent, child: _buildCard(digit, 0.8)),
                                      childWhenDragging: _buildCard(digit, 0.3),
                                      child: _buildCard(digit, 1.0),
                                    );
                                  }),
                                ),

                                onPositionChanged: (Offset newPos) => appParamNotifier.updateOverlayPosition(newPos),
                                fixedFlag: true,
                              );

                              //----------------------------------// 2
                            },
                            icon: const Icon(Icons.pages),
                          ),
                          const SizedBox.shrink(),
                        ],
                      ),

                      const SizedBox(height: 24),

                      Row(
                        children: <Widget>[
                          ElevatedButton.icon(
                            onPressed: () {
                              appParamNotifier.setInputValueStr(str: inputDigitsEditingController.text.trim());

                              inputDigitsEditingController.clear();
                            },
                            icon: const Icon(Icons.input),
                            label: const Text('反映'),
                          ),

                          ElevatedButton.icon(
                            onPressed: () => setState(inputDigitsEditingController.clear),
                            icon: const Icon(Icons.clear),
                            label: const Text('リセット'),
                          ),
                        ],
                      ),
                    ],
                  ),

                  firstEntries: _firstEntries,
                  secondEntries: _secondEntries,
                  onPositionChanged: (Offset newPos) => appParamNotifier.updateOverlayPosition(newPos),
                );

                //----------------------------------// 1
              },

              child: Container(
                width: context.screenSize.width * 0.5,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),

                alignment: Alignment.topRight,

                decoration: BoxDecoration(border: Border.all(color: Colors.white.withValues(alpha: 0.3))),

                child: Text(appParamState.inputValueStr, style: const TextStyle(fontSize: 30)),
              ),
            ),
          ],
        ),
      ),
    );
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
          boxShadow: <BoxShadow>[
            BoxShadow(color: Colors.black.withValues(alpha: 0.3), blurRadius: 4, offset: const Offset(2, 2)),
          ],
        ),
        alignment: Alignment.center,
        child: Text(digit, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white)),
      ),
    );
  }
}
