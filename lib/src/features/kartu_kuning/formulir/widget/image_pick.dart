import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../config/theme/colors.dart';
import '../../../../config/ux_constants.dart';
import '../../../../widgets/button/button_custom.dart';

class ImageBulkPicker extends StatefulWidget {
  const ImageBulkPicker({this.title, this.showAdMore = true, Key? key})
      : super(key: key);
  final String? title;
  final bool showAdMore;

  @override
  State<ImageBulkPicker> createState() => _ImageBulkPickerState();
}

class _ImageBulkPickerState extends State<ImageBulkPicker> {
  File? _imageFile;

  Future<void> _pickImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);
    setState(() {
      if (pickedImage != null) {
        _imageFile = File(pickedImage.path);
      }
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _imageFile == null
              ? GestureDetector(
                  onTap: () async {
                    await showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            ListTile(
                              leading: Icon(Icons.camera),
                              title: Text('Ambil Gambar dari Kamera'),
                              onTap: () {
                                _pickImage(ImageSource.camera);
                                Navigator.pop(context);
                              },
                            ),
                            ListTile(
                              leading: Icon(Icons.image),
                              title: Text('Pilih Gambar dari Galeri'),
                              onTap: () {
                                _pickImage(ImageSource.gallery);
                                Navigator.pop(context);
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Container(
                    width: 120,
                    height: 100,
                    margin: const EdgeInsets.only(top: 20),
                    padding: const EdgeInsets.all(10),
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: UXColors.grey_20,
                      borderRadius:
                          BorderRadiusDirectional.all(Radius.circular(20)),
                    ),
                    child: const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.add_a_photo,
                          color: UXColors.grey_40,
                          size: 60,
                        ),
                        Text(
                          'Tambah Foto',
                          style: TextStyle(
                              fontSize: UXConstants.kFontSizeL,
                              color: UXColors.grey_60),
                        ),
                      ],
                    ),
                  ),
                )
              : Column(
                  children: [
                    Container(
                      width: 120,
                      margin: const EdgeInsets.only(top: 20),
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(4),
                            child: Image.file(
                              _imageFile!,
                              fit: BoxFit.cover,
                              height: 100,
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: GestureDetector(
                              onTap: () {
                                setState(() {
                                  _imageFile = null;
                                });
                              },
                              child: Container(
                                padding: const EdgeInsets.all(1),
                                decoration: BoxDecoration(
                                  color: UXColors.white.withOpacity(0.6),
                                  shape: BoxShape.circle,
                                ),
                                child: Icon(
                                  Icons.close,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
          const SizedBox(height: 32),
          SizedBox(
            height: 45,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: UXButtonCustom(
                onPressed: () async {
                  String image = _imageFile!.path;
                  debugPrint(image);
                  Navigator.pop(context, image);
                },
                title: 'Simpan',
                withHorizontalPadding: true,
                fontSize: UXConstants.kFontSizeL,
                backgroundColor: UXAppColors.biru1,
                borderShape: ContinuousRectangleBorder(
                    borderRadius: BorderRadiusDirectional.circular(20)),
                enabled: true,
              ),
            ),
          ),
        ],
      ),
      appBar: AppBar(
        title: Text(widget.title ?? ''),
      ),
    );
  }

  @override
  void dispose() {
    // controller.dispose();
    super.dispose();
  }
}
