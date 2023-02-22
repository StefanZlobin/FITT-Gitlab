// ignore_for_file: constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppIcons {
  const AppIcons._();
  /* icons arr */
  static const arr_big_left = QleverIconsetIconData(0xe90d);
  static const arr_big_right = QleverIconsetIconData(0xe905);
  static const arr_left = QleverIconsetIconData(0xe908);
  static const arr_up = QleverIconsetIconData(0xe90a);
  static const arr_right = QleverIconsetIconData(0xe903);
  static const arr_down = QleverIconsetIconData(0xe900);
  /* icons checkbox */
  static const checkbox = QleverIconsetIconData(0xe916);
  static const checkbox_empty = QleverIconsetIconData(0xe914);
  static const checkbox_filled = QleverIconsetIconData(0xe917);
  static const checkbox_sel = QleverIconsetIconData(0xe915);
  /* icons close */
  static const close_big = QleverIconsetIconData(0xe906);
  static const close = QleverIconsetIconData(0xe919);
  /* icons star */
  static const star_big_outlined = QleverIconsetIconData(0xe93d);
  static const star_big = QleverIconsetIconData(0xe93e);
  static const star = QleverIconsetIconData(0xe93f);
  /* icons filters */
  static const filters = QleverIconsetIconData(0xe93e);
  static const filters_big_bold = QleverIconsetIconData(0xe91d);
  static const filters_big = QleverIconsetIconData(0xe91c);
  /* icons favorite */
  static const favorite_big = QleverIconsetIconData(0xe91f);
  static const favorite_big_stroke = QleverIconsetIconData(0xe920);
  static const favorite_big_outlined = QleverIconsetIconData(0xe922);
  static const favorite = QleverIconsetIconData(0xe90f);
  static const favorite_outlined = QleverIconsetIconData(0xe910);
  static const favorite_outlined_half = QleverIconsetIconData(0xe925);
  static const favorite_rounded = QleverIconsetIconData(0xe931);
  static const favorite_outlined_rounded = QleverIconsetIconData(0xe932);
  /* icons search */
  static const search = QleverIconsetIconData(0xe918);
  static const search_bold = QleverIconsetIconData(0xe935);
  /* icons spinner */
  static const spinner_base = QleverIconsetIconData(0xe93b);
  static const spinner = QleverIconsetIconData(0xe93c);
  /* icons calendar */
  static const calendar_select = QleverIconsetIconData(0xe90c);
  static const calendar = QleverIconsetIconData(0xe913);
  /* icons user profile */
  static const user_avatar = QleverIconsetIconData(0xe90e);
  static const user_profile = QleverIconsetIconData(0xe933);
  /* icons info club */
  static const sauna = QleverIconsetIconData(0xe934);
  static const massage = QleverIconsetIconData(0xe92c);
  static const key = QleverIconsetIconData(0xe927);
  static const coolair = QleverIconsetIconData(0xe91a);
  static const doctor = QleverIconsetIconData(0xe91b);
  static const towelie = QleverIconsetIconData(0xe942);
  static const shower = QleverIconsetIconData(0xe939);
  static const solarium = QleverIconsetIconData(0xe93a);
  static const parking = QleverIconsetIconData(0xe931);
  static const hairdryer = QleverIconsetIconData(0xe924);
  static const wifi = QleverIconsetIconData(0xe944);
  static const lockers = QleverIconsetIconData(0xe929);
  static const swimming_pool = QleverIconsetIconData(0xe90c);
  static const water = QleverIconsetIconData(0xe943);
  static const towel = QleverIconsetIconData(0xe941);
  /* icons plus/minus */
  static const minus = QleverIconsetIconData(0xe92f);
  static const plus = QleverIconsetIconData(0xe932);
  /* icons menu */
  static const menu_burger = QleverIconsetIconData(0xe93b);
  static const menu_dots = QleverIconsetIconData(0xe92d);
  /* icons training card */
  static const icon_pack = QleverIconsetIconData(0xe91a);
  static const training = QleverIconsetIconData(0xe930);
  /* icons geolocation */
  static const geo_user = QleverIconsetIconData(0xe912);
  static const location = QleverIconsetIconData(0xe923);
  /* another icons */
  static const tick = QleverIconsetIconData(0xe90d);
  static const share = QleverIconsetIconData(0xe938);

/* unused icons in the application */
  static const groups = QleverIconsetIconData(0xe902);
  static const trainer = QleverIconsetIconData(0xe904);
  static const settings = QleverIconsetIconData(0xe937);
  static const fitness_center = QleverIconsetIconData(0xe91e);
  static const logoStorm = QleverIconsetIconData(0xe92a);
  static const clock_ever = QleverIconsetIconData(0xe906);
  static const history = QleverIconsetIconData(0xe926);
  static const message = QleverIconsetIconData(0xe92e);
  static const list = QleverIconsetIconData(0xe928);
  static const map = QleverIconsetIconData(0xe92b);
}

class QleverIconsetIconData extends IconData {
  const QleverIconsetIconData(int codePoint)
      : super(codePoint, fontFamily: 'storm iconset');
}
