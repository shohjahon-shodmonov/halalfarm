import 'package:flutter/material.dart';
import 'package:halolfarm/constants/const.dart';
import 'package:halolfarm/core/data/local/local_data.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Bildirishnomalar",
          style: TextStyle(
            color: ColorConstants.textColorDark100,
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            isThreeLine: true,
            leading: CircleAvatar(
              radius: 30,
              backgroundImage:
                  AssetImage(Hayvonlar.hayvonlarHaqida[index]['rasmi']),
            ),
            title: const Text(
              "Sigiringizning 15 lirt suti sotildi. Balansingizga 75 000 so’m qo’shildi",
              style: TextStyle(
                color: ColorConstants.textColorDark90,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            subtitle: const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "17:19   Feb 26, 2022",
                style: TextStyle(
                  fontSize: 15,
                  color: ColorConstants.textColorDark70,
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: Hayvonlar.hayvonlarHaqida.length,
      ),
    );
  }
}
