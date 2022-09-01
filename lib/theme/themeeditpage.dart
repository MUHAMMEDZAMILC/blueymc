import 'package:blueymc/common/textstyle.dart';
import 'package:blueymc/theme/themeprovider.dart';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ThemeEditPage extends StatefulWidget {
  const ThemeEditPage({Key? key}) : super(key: key);

  @override
  State<ThemeEditPage> createState() => _ThemeEditPageState();
}

class _ThemeEditPageState extends State<ThemeEditPage> {
  @override
  Widget build(BuildContext context) {
    bool isSelected = true;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Theme',
          style: appbar,
        ),
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(top: 180.0),
          child: Align(
            alignment: Alignment.topCenter,
            child: Consumer<ThemeProvider>(builder: (context, provider, child) {
              return DropdownButton<String>(
                value: provider.currentTheme,
                items: [
                  DropdownMenuItem(
                      value: 'light',
                      child: Text(
                        'Light',
                        style: Theme.of(context).textTheme.headline5,
                      )),
                  DropdownMenuItem(
                      value: 'dark',
                      child: Text(
                        'Dark',
                        style: Theme.of(context).textTheme.headline5,
                      )),
                  DropdownMenuItem(
                      value: 'system',
                      child: Text(
                        'System',
                        style: Theme.of(context).textTheme.headline5,
                      )),
                ],
                onChanged: (String? value) {
                  setState(() {
                    provider.currentTheme = value!;
                    provider.changeTheme(value ?? 'system');
                  });
                },
              );
            }),
          ),
        ),
      ),
    );
  }
}
