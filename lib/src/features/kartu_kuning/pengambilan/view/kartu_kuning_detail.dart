// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'dart:io';
import 'dart:isolate';
import 'dart:ui';

import 'package:bebunge/src/features/kartu_kuning/pengambilan/bloc/pengambilan_kk_bloc.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_downloader/flutter_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../../config/theme/colors.dart';

class KartuKuningDetail extends StatefulWidget {
  const KartuKuningDetail({Key? key}) : super(key: key);

  @override
  State<KartuKuningDetail> createState() => _KartuKuningDetailState();
}

class _KartuKuningDetailState extends State<KartuKuningDetail> {
  Widget buildDataRow(String title, String value) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Text(title),
        ),
        Expanded(
          flex: 3,
          child: Text(value),
        ),
      ],
    );
  }

  Future _downloadFile(String url) async {
    Map<Permission, PermissionStatus> status = await [
      Permission.storage,
      Permission.manageExternalStorage,
    ].request();
    if (await Permission.storage.isGranted) {
      final dir = await getExternalStorageDirectory();
      var _localPath = dir!.path;
      final savedDir = Directory(_localPath);
      await savedDir.create(recursive: true).then((value) async {
        await FlutterDownloader.enqueue(
          url: url,
          fileName: 'Kartu-Kuning.pdf',
          savedDir: _localPath,
          showNotification: true,
          openFileFromNotification: true,
        );
      });
    }
  }

  ReceivePort _port = ReceivePort();

  @override
  void initState() {
    super.initState();

    IsolateNameServer.registerPortWithName(
        _port.sendPort, 'downloader_send_port');
    _port.listen((dynamic data) {
      String id = data[0];
      int progress = data[2];

      if (data[1] == DownloadTaskStatus.complete) {
        print('Download Complete');
      }
      setState(() {});
    });

    FlutterDownloader.registerCallback(downloadCallback);
  }

  @override
  void dispose() {
    IsolateNameServer.removePortNameMapping('downloader_send_port');
    super.dispose();
  }

  @pragma('vm:entry-point')
  static void downloadCallback(String id, int status, int progress) {
    final SendPort? send =
        IsolateNameServer.lookupPortByName('downloader_send_port');
    send!.send([id, status, progress]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Detail Kartu Kuning',
          style: const TextStyle(
            color: UXColors.white,
          ),
        ),
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: Icon(CupertinoIcons.chevron_back),
        ),
        iconTheme: IconThemeData(
          color: UXColors.white,
        ),
        backgroundColor: UXAppColors.primaryColors,
      ),
      body: BlocProvider(
        create: (context) =>
            PengambilanKkBloc()..add(PengambilanKkEvent.getKartuKuning()),
        child: BlocBuilder<PengambilanKkBloc, PengambilanKkState>(
          builder: (context, state) {
            return state.maybeWhen(
              orElse: () {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
              loaded: (data) {
                return SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Data Diri',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        buildDataRow('Nama Lengkap', ': ${data.name!}'),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow('No KTP/NIK',
                            ': ${data.nik != null ? data.nik! : '-'}'),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow(
                          'Tanggal Pendaftaran',
                          ': ${data.regDate != null ? DateFormat('d MMMM y').format(DateTime.parse(data.regDate!)) : '-'}',
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow(
                          'Tempat Lahir',
                          ': ${data.birthPlace != null ? data.birthPlace! : '-'}',
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow(
                          'Tanggal Lahir',
                          ': ${data.birthDate != null ? DateFormat('d MMMM y').format(DateTime.parse(data.birthDate!)) : '-'}',
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow('Jenis Kelamin',
                            ': ${data.gender != null ? data.gender! : '-'}'),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow('Kecamatan',
                            ': ${data.subdistrict != null ? data.subdistrict! : '-'}'),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow('Desa',
                            ': ${data.village != null ? data.village! : '-'}'),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow('Alamat Lengkap',
                            ': ${data.address != null ? data.address! : '-'}'),
                        const SizedBox(
                          height: 2.0,
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow(
                          'Nomor HP',
                          ': ${data.phone != null ? data.phone! : '-'}',
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow(
                          'Email',
                          ': ${data.email != null ? data.email! : '-'}',
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow(
                          'Kode Pos',
                          '${data.zipCode != null ? data.zipCode! : '-'}',
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow(
                          'Status Perkawinan',
                          ': ${data.maritalStatus != null ? data.maritalStatus! : '-'}',
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow(
                          'Agama',
                          ': ${data.religion != null ? data.religion! : '-'}',
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow(
                          'Tinggi Badan',
                          ': ${data.height != null ? data.height! : '-'} cm',
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow(
                          'Berat Badan',
                          ': ${data.weight != null ? data.weight! : '-'} kg',
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow(
                          'Surat Izin Mengemudi',
                          ': ${data.sim != null ? data.sim!.map((sim) => 'SIM $sim').join(', ') : '-'}',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Pendidikan Formal',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        buildDataRow(
                          'Pendidikan Terakhir',
                          ': ${data.education != null ? data.education! : '-'}',
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow(
                          'Jurusan',
                          ': ${data.major != null ? data.major! : '-'}',
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow(
                          'Tahun Lulus',
                          ': ${data.graduationYear != null ? data.graduationYear! : '-'}',
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow(
                          'NEM/IPK',
                          ': ${data.scores != null ? data.scores! : '-'}',
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow(
                          'Keterampilan',
                          ': ${data.skills != null ? data.skills!.join(', ') : '-'}',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Bahasa Asing',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        buildDataRow(
                          'Bahasa Asing',
                          ': ${data.languages != null ? data.languages!.join(', ') : '-'}',
                        ),
                        const SizedBox(
                          height: 10.0,
                        ),
                        Text(
                          'Pengalaman Kerja',
                          style: const TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 5.0,
                        ),
                        buildDataRow(
                          'Jabatan',
                          ': ${data.occupations != null ? data.occupations!.join(', ') : '-'}',
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow(
                          'Uraian Tugas',
                          ': ${data.jobDescriptions != null ? data.jobDescriptions!.join(', ') : '-'}',
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow(
                          'Lama Kerja',
                          ': ${data.workLength != null ? data.workLength!.join(', ') : '-'}',
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow(
                          'Nama Perusahaan',
                          ': ${data.companies != null ? data.companies!.join(', ') : '-'}',
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow(
                          'Jabatan Harapan',
                          ': ${data.desiredPosition != null ? data.desiredPosition! : '-'}',
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow(
                          'Gaji Harapan',
                          ': ${data.desiredWages != null ? data.desiredWages! : '-'}',
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow(
                          'Lokasi Harapan',
                          ': ${data.desiredLocation != null ? data.desiredLocation! : '-'}',
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        buildDataRow(
                          'Wilayah Harapan',
                          ': ${data.region ?? '-'}',
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        if (data.status == 'Selesai')
                          ElevatedButton(
                            onPressed: () => _downloadFile(data.cardUrl!),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Icon(
                                  Icons.download,
                                  size: 20,
                                ),
                                Text('Download Kartu Kuning'),
                              ],
                            ),
                          )
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
