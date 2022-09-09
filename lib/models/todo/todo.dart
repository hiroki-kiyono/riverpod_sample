import 'package:freezed_annotation/freezed_annotation.dart';
// 生成するファイル情報を書く({ファイル名}.freezed.dart)
part 'todo.freezed.dart';
part 'todo.g.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
abstract class Todo with _$Todo {
  const factory Todo(
      {
        // 必須
        required String id,
        // デフォルトで空指定
        @Default("") String title,
        required DateTime timestamp,
        @Default(false) bool done
      }) = _Todo;
  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);
}
