import 'package:flutter/material.dart';
import 'package:couldai_user_app/widgets/component_library_panel.dart';
import 'package:couldai_user_app/widgets/design_canvas.dart';
import 'package:couldai_user_app/widgets/properties_panel.dart';
import 'package:couldai_user_app/widgets/top_toolbar.dart';

class PcbDesignScreen extends StatelessWidget {
  const PcbDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopToolbar(),
      body: Row(
        children: [
          const ComponentLibraryPanel(),
          const Expanded(
            child: DesignCanvas(),
          ),
          const PropertiesPanel(),
        ],
      ),
    );
  }
}
