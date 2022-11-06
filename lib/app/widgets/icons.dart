import 'package:flutter/material.dart';
import 'package:task_app/app/core/values/colors.dart';
import 'package:task_app/app/core/values/icons.dart';

List<Icon> getIcons() {
  return const [
    Icon(IconData(personIcon, fontFamily: 'MaterialIcons'), color: purple),
    Icon(IconData(wordIcon, fontFamily: 'MaterialIcons'), color: pink),
    Icon(IconData(movieIcon, fontFamily: 'MaterialIcons'), color: green),
    Icon(IconData(sportIcon, fontFamily: 'MaterialIcons'), color: yellow),
    Icon(IconData(travelIcon, fontFamily: 'MaterialIcons'), color: deepPink),
    Icon(IconData(shopIcon, fontFamily: 'MaterialIcons'), color: lightBlue),
    Icon(IconData(zoomOutIcon, fontFamily: 'MaterialIcons'), color: blue),
    Icon(IconData(watermarkIcon, fontFamily: 'MaterialIcons'), color: red),
    Icon(IconData(contactIcon, fontFamily: 'MaterialIcons'), color: blue),
    Icon(IconData(likeIcon, fontFamily: 'MaterialIcons'), color: like),
  ];
}
