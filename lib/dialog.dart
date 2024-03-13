import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MultiChoiceDialog extends StatefulWidget {
  const MultiChoiceDialog({Key? key}) : super(key: key);

  @override
  MultiChoiceDialogState createState() => MultiChoiceDialogState();
}

class MultiChoiceDialogState extends State<MultiChoiceDialog> {
  List<String> colors = ["Red", "Green", "Blue", "Purple", "Orange"];

  List<bool> status = [true, false, false, false, false, false];

  bool getValue(String val) {
    int index = colors.indexOf(val);
    if (index == -1) return false;
    return status[index];
  }

  void toggleValue(String name) {
    int index = colors.indexOf(name);
    if (index == -1) return;
    status[index] = !status[index];
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onSurface);

    return AlertDialog(
      title: Text('Your preferred color', style: textTheme.titleLarge!),
      contentPadding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
      content: Wrap(
        direction: Axis.vertical,
        children: colors
            .map((c) => InkWell(
                  child: Row(
                    children: <Widget>[
                      Checkbox(
                          value: getValue(c),
                          onChanged: (value) {
                            setState(() {
                              toggleValue(c);
                            });
                          }),
                      Text(
                        c,
                        style: textTheme.titleSmall!,
                      ),
                    ],
                  ),
                  onTap: () {
                    setState(() {
                      toggleValue(c);
                    });
                  },
                ))
            .toList(),
      ),
      actions: <Widget>[
        TextButton(
          child: Text('Cancel', style: textTheme.labelLarge!),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          //child:  TextStyleExample(name : 'OK',style : textTheme.labelLarge!.copyWith(color: MyColors.accentDark)),
          child: Text('OK', style: textTheme.labelLarge!),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}

class SingleChoiceDialog extends StatefulWidget {
  const SingleChoiceDialog({Key? key}) : super(key: key);

  @override
  SingleChoiceDialogState createState() => SingleChoiceDialogState();
}

class SingleChoiceDialogState extends State<SingleChoiceDialog> {
  String? selectedRingtone = "None";
  List<String> ringtone = ["None", "Classic rock", "Monophonic", "Luna"];

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context)
        .textTheme
        .apply(displayColor: Theme.of(context).colorScheme.onSurface);

    return SimpleDialog(
      //title: TextStyleExample(name : 'Phone Ringtone',style : textTheme.titleMedium!.copyWith(color: MyColors.black, fontWeight: FontWeight.bold)),
      title: Text('Phone Ringtone', style: textTheme.titleMedium!),
      children: ringtone
          .map((r) => RadioListTile(
                title: Text(r, style: textTheme.titleSmall!),
                groupValue: selectedRingtone,
                selected: r == selectedRingtone,
                value: r,
                onChanged: (dynamic val) {
                  setState(() {
                    selectedRingtone = val;
                    // Navigator.of(context).pop();
                  });
                },
              ))
          .toList(),
    );
  }
}
