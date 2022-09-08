# riverpod_sample

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.


## 技術スタック
- 状態管理：hooks_riverpod
- 画面遷移：go_router
- データクラス作成：freezed
## 始めてビルドを通す場合
1. 下記コマンドでfreezed等の自動生成ファイルを作成する  
   `flutter pub run build_runner build --delete-conflicting-outputs`  
   オプションは生成済みのファイルがコンフリクトした場合の削除命令