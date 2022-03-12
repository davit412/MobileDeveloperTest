// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RegisterStateTearOff {
  const _$RegisterStateTearOff();

  _RegisterSate call(
      {String email = '',
      String password = '',
      String vPassword = '',
      String userName = ''}) {
    return _RegisterSate(
      email: email,
      password: password,
      vPassword: vPassword,
      userName: userName,
    );
  }
}

/// @nodoc
const $RegisterState = _$RegisterStateTearOff();

/// @nodoc
mixin _$RegisterState {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get vPassword => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegisterStateCopyWith<RegisterState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterStateCopyWith<$Res> {
  factory $RegisterStateCopyWith(
          RegisterState value, $Res Function(RegisterState) then) =
      _$RegisterStateCopyWithImpl<$Res>;
  $Res call({String email, String password, String vPassword, String userName});
}

/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._value, this._then);

  final RegisterState _value;
  // ignore: unused_field
  final $Res Function(RegisterState) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? vPassword = freezed,
    Object? userName = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      vPassword: vPassword == freezed
          ? _value.vPassword
          : vPassword // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$RegisterSateCopyWith<$Res>
    implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterSateCopyWith(
          _RegisterSate value, $Res Function(_RegisterSate) then) =
      __$RegisterSateCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password, String vPassword, String userName});
}

/// @nodoc
class __$RegisterSateCopyWithImpl<$Res>
    extends _$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterSateCopyWith<$Res> {
  __$RegisterSateCopyWithImpl(
      _RegisterSate _value, $Res Function(_RegisterSate) _then)
      : super(_value, (v) => _then(v as _RegisterSate));

  @override
  _RegisterSate get _value => super._value as _RegisterSate;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? vPassword = freezed,
    Object? userName = freezed,
  }) {
    return _then(_RegisterSate(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      vPassword: vPassword == freezed
          ? _value.vPassword
          : vPassword // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RegisterSate implements _RegisterSate {
  _$_RegisterSate(
      {this.email = '',
      this.password = '',
      this.vPassword = '',
      this.userName = ''});

  @JsonKey()
  @override
  final String email;
  @JsonKey()
  @override
  final String password;
  @JsonKey()
  @override
  final String vPassword;
  @JsonKey()
  @override
  final String userName;

  @override
  String toString() {
    return 'RegisterState(email: $email, password: $password, vPassword: $vPassword, userName: $userName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterSate &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality().equals(other.vPassword, vPassword) &&
            const DeepCollectionEquality().equals(other.userName, userName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(vPassword),
      const DeepCollectionEquality().hash(userName));

  @JsonKey(ignore: true)
  @override
  _$RegisterSateCopyWith<_RegisterSate> get copyWith =>
      __$RegisterSateCopyWithImpl<_RegisterSate>(this, _$identity);
}

abstract class _RegisterSate implements RegisterState {
  factory _RegisterSate(
      {String email,
      String password,
      String vPassword,
      String userName}) = _$_RegisterSate;

  @override
  String get email;
  @override
  String get password;
  @override
  String get vPassword;
  @override
  String get userName;
  @override
  @JsonKey(ignore: true)
  _$RegisterSateCopyWith<_RegisterSate> get copyWith =>
      throw _privateConstructorUsedError;
}
