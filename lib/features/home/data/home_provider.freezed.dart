// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeWrapper {

 List<Person> get people;
/// Create a copy of HomeWrapper
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeWrapperCopyWith<HomeWrapper> get copyWith => _$HomeWrapperCopyWithImpl<HomeWrapper>(this as HomeWrapper, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeWrapper&&const DeepCollectionEquality().equals(other.people, people));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(people));

@override
String toString() {
  return 'HomeWrapper(people: $people)';
}


}

/// @nodoc
abstract mixin class $HomeWrapperCopyWith<$Res>  {
  factory $HomeWrapperCopyWith(HomeWrapper value, $Res Function(HomeWrapper) _then) = _$HomeWrapperCopyWithImpl;
@useResult
$Res call({
 List<Person> people
});




}
/// @nodoc
class _$HomeWrapperCopyWithImpl<$Res>
    implements $HomeWrapperCopyWith<$Res> {
  _$HomeWrapperCopyWithImpl(this._self, this._then);

  final HomeWrapper _self;
  final $Res Function(HomeWrapper) _then;

/// Create a copy of HomeWrapper
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? people = null,}) {
  return _then(_self.copyWith(
people: null == people ? _self.people : people // ignore: cast_nullable_to_non_nullable
as List<Person>,
  ));
}

}


/// @nodoc


class _HomeWrapper implements HomeWrapper {
  const _HomeWrapper({required final  List<Person> people}): _people = people;
  

 final  List<Person> _people;
@override List<Person> get people {
  if (_people is EqualUnmodifiableListView) return _people;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_people);
}


/// Create a copy of HomeWrapper
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeWrapperCopyWith<_HomeWrapper> get copyWith => __$HomeWrapperCopyWithImpl<_HomeWrapper>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeWrapper&&const DeepCollectionEquality().equals(other._people, _people));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_people));

@override
String toString() {
  return 'HomeWrapper(people: $people)';
}


}

/// @nodoc
abstract mixin class _$HomeWrapperCopyWith<$Res> implements $HomeWrapperCopyWith<$Res> {
  factory _$HomeWrapperCopyWith(_HomeWrapper value, $Res Function(_HomeWrapper) _then) = __$HomeWrapperCopyWithImpl;
@override @useResult
$Res call({
 List<Person> people
});




}
/// @nodoc
class __$HomeWrapperCopyWithImpl<$Res>
    implements _$HomeWrapperCopyWith<$Res> {
  __$HomeWrapperCopyWithImpl(this._self, this._then);

  final _HomeWrapper _self;
  final $Res Function(_HomeWrapper) _then;

/// Create a copy of HomeWrapper
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? people = null,}) {
  return _then(_HomeWrapper(
people: null == people ? _self._people : people // ignore: cast_nullable_to_non_nullable
as List<Person>,
  ));
}


}

// dart format on
