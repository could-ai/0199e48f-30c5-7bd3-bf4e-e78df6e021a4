import 'package:flutter/material.dart';

class TopToolbar extends StatelessWidget implements PreferredSizeWidget {
  const TopToolbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('PCB Design Tool'),
      actions: [
        IconButton(
          icon: const Icon(Icons.save),
          onPressed: () {},
          tooltip: 'Save Project',
        ),
        IconButton(
          icon: const Icon(Icons.folder_open),
          onPressed: () {},
          tooltip: 'Load Project',
        ),
        const VerticalDivider(),
        IconButton(
          icon: const Icon(Icons.undo),
          onPressed: () {},
          tooltip: 'Undo',
        ),
        IconButton(
          icon: const Icon(Icons.redo),
          onPressed: () {},
          tooltip: 'Redo',
        ),
        const VerticalDivider(),
        IconButton(
          icon: const Icon(Icons.zoom_in),
          onPressed: () {},
          tooltip: 'Zoom In',
        ),
        IconButton(
          icon: const Icon(Icons.zoom_out),
          onPressed: () {},
          tooltip: 'Zoom Out',
        ),
        const VerticalDivider(),
        IconButton(
          icon: const Icon(Icons.upload_file),
          onPressed: () {},
          tooltip: 'Export to Gerber/Excellon',
        ),
        const VerticalDivider(),
        // Dark Mode Toggle
        IconButton(
          icon: Theme.of(context).brightness == Brightness.dark
              ? const Icon(Icons.light_mode)
              : const Icon(Icons.dark_mode),
          tooltip: 'Toggle Dark/Light Mode',
          onPressed: () {
            final theme = Theme.of(context).brightness == Brightness.dark
                ? ThemeMode.light
                : ThemeMode.dark;
            // This is a placeholder for the theme change logic
            // In a real app, this would be handled by a state management solution
            // For now, we print to console to show it's hooked up.
            print("Theme change requested to $theme");
             // In a real app, you would call your theme controller here.
            // MyApp.of(context).changeTheme(theme);
          },
        ),
        const SizedBox(width: 10),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
