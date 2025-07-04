import 'package:flutter/material.dart';

import '../core/constants/colors.dart';

const lightColorScheme = ColorScheme(
  brightness: Brightness.light,          // 전체 테마가 밝은지 어두운지 설정 (light/dark)

  primary: AppColors.primary,            // 주요 UI 요소 (AppBar, FAB, Switch 등)의 배경색
  onPrimary: Colors.white,               // primary 위에 올라가는 글자/아이콘 색

  secondary: AppColors.secondary,        // 강조 요소, 버튼, 슬라이더, 칩 등의 포인트 색
  onSecondary: Colors.black,             // secondary 위에 올라가는 글자/아이콘 색

  error: AppColors.error,                // 오류 상태 (예: TextFormField 에러 라벨, 경고 텍스트)
  onError: Colors.white,                 // error 색 위에 올라가는 텍스트/아이콘 색

  surface: AppColors.surface,            // Card, Dialog, BottomSheet 등의 배경색
  onSurface: AppColors.text,             // surface 위에 올라가는 텍스트/아이콘 색
);
