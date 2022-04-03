import 'package:flutter/material.dart';

class Tarif {
  static List tariflar = [
    {
      "turi": "Oddiy",
      "narx": "Tekin",
      "moslik":
          "Bu yerda bu tarif kimlarga mos tushishi haqida matn yozilgan bo’ladi",
    },
    {
      "turi": "Pro",
      "narx": "12 000 / har oyga",
      "moslik":
          "Bu yerda bu tarif kimlarga mos tushishi haqida matn yozilgan bo’ladi",
    },
    {
      "turi": "Hamkor",
      "narx": "Tekin",
      "moslik":
          "Bu yerda bu tarif kimlarga mos tushishi haqida matn yozilgan bo’ladi",
    }
  ];

  static List tarifQulayliklari = [
    "Har kunlik holatni ko’rish",
    "Hayvon yetilgandan so’ng \nyetkazib berish",
    "24/7 online kamera orqali kuzatuv",
    "Istalgan paytda hayvonni onlayn \nsotuvga qo’yish",
    "Qo’shimcha xizmatlar",
  ];
}

class Hayvonlar {
  static List hayvonlarHaqida = [
    {
      "nomi": "Buqa",
      "yoshi": "1.5 yillik",
      "narxi": "6 800 000",
      "rasmi": "assets/images/animals/cow_big.png"
    },
    {
      "nomi": "Hisori Qo'y",
      "yoshi": "2 yillik",
      "narxi": "5 700 000",
      "rasmi": "assets/images/animals/hisor_sheep.png"
    },
    {
      "nomi": "Qo'y",
      "yoshi": "1 yillik",
      "narxi": "6 500 000",
      "rasmi": "assets/images/animals/sheep.png"
    },
    {
      "nomi": "Sigir",
      "yoshi": "1.5 yillik",
      "narxi": "6 000 000",
      "rasmi": "assets/images/animals/cow.png"
    },
    {
      "nomi": "Ot",
      "yoshi": "1.5 yillik",
      "narxi": "6 000 000",
      "rasmi": "assets/images/animals/horse.png"
    },
    {
      "nomi": "Sigir",
      "yoshi": "1.5 yillik",
      "narxi": "6 000 000",
      "rasmi": "assets/images/animals/cow2.png"
    },
    {
      "nomi": "Tovuq",
      "yoshi": "1.5 yillik",
      "narxi": "6 000 000",
      "rasmi": "assets/images/animals/hen.png"
    },
    {
      "nomi": "Quyon",
      "yoshi": "1.5 yillik",
      "narxi": "6 000 000",
      "rasmi": "assets/images/animals/rabbit.png"
    },
  ];
}

class Fermalar {
  static List fermalarHaqida = [
    {
      "nomi": "Yangi O'zbekiston Fermasi",
      "joylashuv": "Toshkent vil., Oqqo'rg'on tumani",
      "rasmi": "assets/images/farms/yangi_uzb.png",
    },
    {
      "nomi": "Chiqchiq Farm",
      "joylashuv": "Toshkent vil., Chiqchiq tumani",
      "rasmi": "assets/images/farms/chirchiq.png",
    },
    {
      "nomi": "Parkent Farm",
      "joylashuv": "Toshkent vil., Parkent tumani",
      "rasmi": "assets/images/farms/parkent.png",
    },
    {
      "nomi": "Guliston Farm",
      "joylashuv": "Sirdaryo vil., Guliston tumani",
      "rasmi": "assets/images/farms/guliston.png",
    },
  ];
}
