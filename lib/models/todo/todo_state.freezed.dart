// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'todo_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TodoListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Todo> todoList) $default, {
    required TResult Function() loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Todo> todoList)? $default, {
    TResult Function()? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Todo> todoList)? $default, {
    TResult Function()? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TodoListStateData value) $default, {
    required TResult Function(TodoListStateLoading value) loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(TodoListStateData value)? $default, {
    TResult Function(TodoListStateLoading value)? loading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TodoListStateData value)? $default, {
    TResult Function(TodoListStateLoading value)? loading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoListStateCopyWith<$Res> {
  factory $TodoListStateCopyWith(
          TodoListState value, $Res Function(TodoListState) then) =
      _$TodoListStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TodoListStateCopyWithImpl<$Res>
    implements $TodoListStateCopyWith<$Res> {
  _$TodoListStateCopyWithImpl(this._value, this._then);

  final TodoListState _value;
  // ignore: unused_field
  final $Res Function(TodoListState) _then;
}

/// @nodoc
abstract class _$$TodoListStateLoadingCopyWith<$Res> {
  factory _$$TodoListStateLoadingCopyWith(_$TodoListStateLoading value,
          $Res Function(_$TodoListStateLoading) then) =
      __$$TodoListStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TodoListStateLoadingCopyWithImpl<$Res>
    extends _$TodoListStateCopyWithImpl<$Res>
    implements _$$TodoListStateLoadingCopyWith<$Res> {
  __$$TodoListStateLoadingCopyWithImpl(_$TodoListStateLoading _value,
      $Res Function(_$TodoListStateLoading) _then)
      : super(_value, (v) => _then(v as _$TodoListStateLoading));

  @override
  _$TodoListStateLoading get _value => super._value as _$TodoListStateLoading;
}

/// @nodoc

class _$TodoListStateLoading implements TodoListStateLoading {
  const _$TodoListStateLoading();

  @override
  String toString() {
    return 'TodoListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TodoListStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Todo> todoList) $default, {
    required TResult Function() loading,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Todo> todoList)? $default, {
    TResult Function()? loading,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Todo> todoList)? $default, {
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TodoListStateData value) $default, {
    required TResult Function(TodoListStateLoading value) loading,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(TodoListStateData value)? $default, {
    TResult Function(TodoListStateLoading value)? loading,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TodoListStateData value)? $default, {
    TResult Function(TodoListStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class TodoListStateLoading implements TodoListState {
  const factory TodoListStateLoading() = _$TodoListStateLoading;
}

/// @nodoc
abstract class _$$TodoListStateDataCopyWith<$Res> {
  factory _$$TodoListStateDataCopyWith(
          _$TodoListStateData value, $Res Function(_$TodoListStateData) then) =
      __$$TodoListStateDataCopyWithImpl<$Res>;
  $Res call({List<Todo> todoList});
}

/// @nodoc
class __$$TodoListStateDataCopyWithImpl<$Res>
    extends _$TodoListStateCopyWithImpl<$Res>
    implements _$$TodoListStateDataCopyWith<$Res> {
  __$$TodoListStateDataCopyWithImpl(
      _$TodoListStateData _value, $Res Function(_$TodoListStateData) _then)
      : super(_value, (v) => _then(v as _$TodoListStateData));

  @override
  _$TodoListStateData get _value => super._value as _$TodoListStateData;

  @override
  $Res call({
    Object? todoList = freezed,
  }) {
    return _then(_$TodoListStateData(
      todoList: todoList == freezed
          ? _value._todoList
          : todoList // ignore: cast_nullable_to_non_nullable
              as List<Todo>,
    ));
  }
}

/// @nodoc

class _$TodoListStateData implements TodoListStateData {
  const _$TodoListStateData({required final List<Todo> todoList})
      : _todoList = todoList;

  final List<Todo> _todoList;
  @override
  List<Todo> get todoList {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todoList);
  }

  @override
  String toString() {
    return 'TodoListState(todoList: $todoList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoListStateData &&
            const DeepCollectionEquality().equals(other._todoList, _todoList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_todoList));

  @JsonKey(ignore: true)
  @override
  _$$TodoListStateDataCopyWith<_$TodoListStateData> get copyWith =>
      __$$TodoListStateDataCopyWithImpl<_$TodoListStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(List<Todo> todoList) $default, {
    required TResult Function() loading,
  }) {
    return $default(todoList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(List<Todo> todoList)? $default, {
    TResult Function()? loading,
  }) {
    return $default?.call(todoList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(List<Todo> todoList)? $default, {
    TResult Function()? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(todoList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(TodoListStateData value) $default, {
    required TResult Function(TodoListStateLoading value) loading,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(TodoListStateData value)? $default, {
    TResult Function(TodoListStateLoading value)? loading,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(TodoListStateData value)? $default, {
    TResult Function(TodoListStateLoading value)? loading,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class TodoListStateData implements TodoListState {
  const factory TodoListStateData({required final List<Todo> todoList}) =
      _$TodoListStateData;

  List<Todo> get todoList;
  @JsonKey(ignore: true)
  _$$TodoListStateDataCopyWith<_$TodoListStateData> get copyWith =>
      throw _privateConstructorUsedError;
}
