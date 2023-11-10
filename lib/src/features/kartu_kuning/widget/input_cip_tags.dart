import 'package:flutter/material.dart';

class InputChipTags extends StatefulWidget {
  final String label;
  final List<String> tags;
  final ValueChanged<List<String>> onTagsChanged;

  InputChipTags(
      {required this.tags, required this.onTagsChanged, required this.label});

  @override
  _InputChipTagsState createState() => _InputChipTagsState();
}

class _InputChipTagsState extends State<InputChipTags> {
  final TextEditingController _textEditingController = TextEditingController();
  List<String> _selectedTags = [];
  FocusNode _textFieldFocusNode = FocusNode();

  @override
  void initState() {
    _selectedTags = widget.tags;
    _textFieldFocusNode.addListener(() {
      if (!_textFieldFocusNode.hasFocus) {
        _addTag();
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(),
        ),
        SizedBox(height: 8),
        TextField(
          controller: _textEditingController,
          focusNode: _textFieldFocusNode,
          decoration: InputDecoration(
            filled: false,
            prefixIcon: widget.tags.isNotEmpty
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                          children: widget.tags.map((String tag) {
                        return Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                            color: Color.fromARGB(255, 74, 137, 92),
                          ),
                          margin: const EdgeInsets.only(right: 10.0),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 4.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                child: Text(
                                  '$tag',
                                  style: const TextStyle(color: Colors.white),
                                ),
                                onTap: () {
                                  //print("$tag selected");
                                },
                              ),
                              const SizedBox(width: 4.0),
                              InkWell(
                                child: const Icon(
                                  Icons.cancel,
                                  size: 14.0,
                                  color: Color.fromARGB(255, 233, 233, 233),
                                ),
                                onTap: () {
                                  setState(() {
                                    _selectedTags.remove(tag);
                                    _textEditingController.clear();
                                    widget.onTagsChanged(_selectedTags);
                                  });
                                },
                              )
                            ],
                          ),
                        );
                      }).toList()),
                    ),
                  )
                : null,
            helperText: 'Tekan enter untuk mengsubmit',
          ),
          onSubmitted: (text) {
            _addTag();
          },
          onEditingComplete: () {
            _addTag();
          },
        ),
      ],
    );
  }

  void _addTag() {
    String tag = _textEditingController.text.trim();
    if (tag.isNotEmpty && !_selectedTags.contains(tag)) {
      setState(() {
        _selectedTags.add(tag);
        _textEditingController.clear();
        widget.onTagsChanged(_selectedTags);
      });
    }
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }
}
