// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package

part of 'events_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

mixin _$EventsResult<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(T payload),
    @required Result error(Object error),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(T payload),
    Result error(Object error),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(Success<T> value),
    @required Result error(Error<T> value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(Success<T> value),
    Result error(Error<T> value),
    @required Result orElse(),
  });
}

class _$Success<T> implements Success<T> {
  _$Success(this.payload) : assert(payload != null);

  @override
  final T payload;

  @override
  String toString() {
    return 'EventsResult<$T>.success(payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Success<T> &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality().equals(other.payload, payload)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ payload.hashCode;

  @override
  _$Success<T> copyWith({
    Object payload = freezed,
  }) {
    assert(payload != null);
    return _$Success<T>(
      payload == freezed ? this.payload : payload as T,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(T payload),
    @required Result error(Object error),
  }) {
    assert(success != null);
    assert(error != null);
    return success(payload);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(T payload),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(payload);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(Success<T> value),
    @required Result error(Error<T> value),
  }) {
    assert(success != null);
    assert(error != null);
    return success(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(Success<T> value),
    Result error(Error<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<T> implements EventsResult<T> {
  factory Success(T payload) = _$Success<T>;

  T get payload;

  Success<T> copyWith({T payload});
}

class _$Error<T> implements Error<T> {
  _$Error(this.error) : assert(error != null);

  @override
  final Object error;

  @override
  String toString() {
    return 'EventsResult<$T>.error(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error<T> &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode => runtimeType.hashCode ^ error.hashCode;

  @override
  _$Error<T> copyWith({
    Object error = freezed,
  }) {
    assert(error != null);
    return _$Error<T>(
      error == freezed ? this.error : error,
    );
  }

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result success(T payload),
    @required Result error(Object error),
  }) {
    assert(success != null);
    assert(error != null);
    return error(this.error);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result success(T payload),
    Result error(Object error),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result success(Success<T> value),
    @required Result error(Error<T> value),
  }) {
    assert(success != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result success(Success<T> value),
    Result error(Error<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T> implements EventsResult<T> {
  factory Error(Object error) = _$Error<T>;

  Object get error;

  Error<T> copyWith({Object error});
}
