import 'package:freezed_annotation/freezed_annotation.dart';
// 生成するファイル情報を書く({ファイル名}.freezed.dart)
part 'todo.freezed.dart';

//Freezed特有の書き方なので、スニペットを用意するのが良い
@freezed
abstract class Todo with _$Todo {
  const factory Todo(
      {
        // 必須
        required int id,
        // null許容
        String? title
      }) = _Todo;
}
