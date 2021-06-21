// GENERATED CODE - DO NOT MODIFY BY HAND

part of location_weather_models;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocationWeatherState> _$locationWeatherStateSerializer =
    new _$LocationWeatherStateSerializer();
Serializer<Weather> _$weatherSerializer = new _$WeatherSerializer();
Serializer<Location> _$locationSerializer = new _$LocationSerializer();
Serializer<LocationWeather> _$locationWeatherSerializer =
    new _$LocationWeatherSerializer();

class _$LocationWeatherStateSerializer
    implements StructuredSerializer<LocationWeatherState> {
  @override
  final Iterable<Type> types = const [
    LocationWeatherState,
    _$LocationWeatherState
  ];
  @override
  final String wireName = 'LocationWeatherState';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, LocationWeatherState object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'locationWeather',
      serializers.serialize(object.locationWeather,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(int), const FullType(LocationWeather)])),
      'searchResult',
      serializers.serialize(object.searchResult,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Location)])),
      'weatherParameters',
      serializers.serialize(object.weatherParameters,
          specifiedType:
              const FullType(BuiltList, const [const FullType(String)])),
    ];

    return result;
  }

  @override
  LocationWeatherState deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationWeatherStateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'locationWeather':
          result.locationWeather.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(int),
                const FullType(LocationWeather)
              ]))!);
          break;
        case 'searchResult':
          result.searchResult.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Location)]))!
              as BuiltList<Object>);
          break;
        case 'weatherParameters':
          result.weatherParameters.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(String)]))!
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherSerializer implements StructuredSerializer<Weather> {
  @override
  final Iterable<Type> types = const [Weather, _$Weather];
  @override
  final String wireName = 'Weather';

  @override
  Iterable<Object?> serialize(Serializers serializers, Weather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'applicable_date',
      serializers.serialize(object.applicableDate,
          specifiedType: const FullType(DateTime)),
      'weather_state_name',
      serializers.serialize(object.weatherStateName,
          specifiedType: const FullType(String)),
      'weather_state_abbr',
      serializers.serialize(object.weatherStateAbbreviation,
          specifiedType: const FullType(String)),
      'wind_speed',
      serializers.serialize(object.windSpeed,
          specifiedType: const FullType(double)),
      'wind_direction',
      serializers.serialize(object.windDirection,
          specifiedType: const FullType(double)),
      'wind_direction_compass',
      serializers.serialize(object.windDirectionCompass,
          specifiedType: const FullType(String)),
      'min_temp',
      serializers.serialize(object.minTemp,
          specifiedType: const FullType(double)),
      'max_temp',
      serializers.serialize(object.maxTemp,
          specifiedType: const FullType(double)),
      'the_temp',
      serializers.serialize(object.theTemp,
          specifiedType: const FullType(double)),
      'air_pressure',
      serializers.serialize(object.airPressure,
          specifiedType: const FullType(double)),
      'humidity',
      serializers.serialize(object.humidity,
          specifiedType: const FullType(double)),
      'visibility',
      serializers.serialize(object.visibility,
          specifiedType: const FullType(double)),
      'predictability',
      serializers.serialize(object.predictability,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  Weather deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'applicable_date':
          result.applicableDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'weather_state_name':
          result.weatherStateName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'weather_state_abbr':
          result.weatherStateAbbreviation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'wind_speed':
          result.windSpeed = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'wind_direction':
          result.windDirection = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'wind_direction_compass':
          result.windDirectionCompass = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'min_temp':
          result.minTemp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'max_temp':
          result.maxTemp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'the_temp':
          result.theTemp = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'air_pressure':
          result.airPressure = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'humidity':
          result.humidity = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'predictability':
          result.predictability = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$LocationSerializer implements StructuredSerializer<Location> {
  @override
  final Iterable<Type> types = const [Location, _$Location];
  @override
  final String wireName = 'Location';

  @override
  Iterable<Object?> serialize(Serializers serializers, Location object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'woeid',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'location_type',
      serializers.serialize(object.locationType,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Location deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'woeid':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location_type':
          result.locationType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LocationWeatherSerializer
    implements StructuredSerializer<LocationWeather> {
  @override
  final Iterable<Type> types = const [LocationWeather, _$LocationWeather];
  @override
  final String wireName = 'LocationWeather';

  @override
  Iterable<Object?> serialize(Serializers serializers, LocationWeather object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'woeid',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'location',
      serializers.serialize(object.location,
          specifiedType: const FullType(Location)),
      'consolidated_weather',
      serializers.serialize(object.weather,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Weather)])),
      'sun_rise',
      serializers.serialize(object.sunRise,
          specifiedType: const FullType(DateTime)),
      'sun_set',
      serializers.serialize(object.sunSet,
          specifiedType: const FullType(DateTime)),
    ];

    return result;
  }

  @override
  LocationWeather deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationWeatherBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'woeid':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
              specifiedType: const FullType(Location))! as Location);
          break;
        case 'consolidated_weather':
          result.weather.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Weather)]))!
              as BuiltList<Object>);
          break;
        case 'sun_rise':
          result.sunRise = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'sun_set':
          result.sunSet = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$LocationWeatherState extends LocationWeatherState {
  @override
  final BuiltMap<int, LocationWeather> locationWeather;
  @override
  final BuiltList<Location> searchResult;
  @override
  final BuiltList<String> weatherParameters;

  factory _$LocationWeatherState(
          [void Function(LocationWeatherStateBuilder)? updates]) =>
      (new LocationWeatherStateBuilder()..update(updates)).build();

  _$LocationWeatherState._(
      {required this.locationWeather,
      required this.searchResult,
      required this.weatherParameters})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        locationWeather, 'LocationWeatherState', 'locationWeather');
    BuiltValueNullFieldError.checkNotNull(
        searchResult, 'LocationWeatherState', 'searchResult');
    BuiltValueNullFieldError.checkNotNull(
        weatherParameters, 'LocationWeatherState', 'weatherParameters');
  }

  @override
  LocationWeatherState rebuild(
          void Function(LocationWeatherStateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationWeatherStateBuilder toBuilder() =>
      new LocationWeatherStateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationWeatherState &&
        locationWeather == other.locationWeather &&
        searchResult == other.searchResult &&
        weatherParameters == other.weatherParameters;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, locationWeather.hashCode), searchResult.hashCode),
        weatherParameters.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LocationWeatherState')
          ..add('locationWeather', locationWeather)
          ..add('searchResult', searchResult)
          ..add('weatherParameters', weatherParameters))
        .toString();
  }
}

class LocationWeatherStateBuilder
    implements Builder<LocationWeatherState, LocationWeatherStateBuilder> {
  _$LocationWeatherState? _$v;

  MapBuilder<int, LocationWeather>? _locationWeather;
  MapBuilder<int, LocationWeather> get locationWeather =>
      _$this._locationWeather ??= new MapBuilder<int, LocationWeather>();
  set locationWeather(MapBuilder<int, LocationWeather>? locationWeather) =>
      _$this._locationWeather = locationWeather;

  ListBuilder<Location>? _searchResult;
  ListBuilder<Location> get searchResult =>
      _$this._searchResult ??= new ListBuilder<Location>();
  set searchResult(ListBuilder<Location>? searchResult) =>
      _$this._searchResult = searchResult;

  ListBuilder<String>? _weatherParameters;
  ListBuilder<String> get weatherParameters =>
      _$this._weatherParameters ??= new ListBuilder<String>();
  set weatherParameters(ListBuilder<String>? weatherParameters) =>
      _$this._weatherParameters = weatherParameters;

  LocationWeatherStateBuilder();

  LocationWeatherStateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _locationWeather = $v.locationWeather.toBuilder();
      _searchResult = $v.searchResult.toBuilder();
      _weatherParameters = $v.weatherParameters.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationWeatherState other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocationWeatherState;
  }

  @override
  void update(void Function(LocationWeatherStateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LocationWeatherState build() {
    _$LocationWeatherState _$result;
    try {
      _$result = _$v ??
          new _$LocationWeatherState._(
              locationWeather: locationWeather.build(),
              searchResult: searchResult.build(),
              weatherParameters: weatherParameters.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'locationWeather';
        locationWeather.build();
        _$failedField = 'searchResult';
        searchResult.build();
        _$failedField = 'weatherParameters';
        weatherParameters.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LocationWeatherState', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Weather extends Weather {
  @override
  final int id;
  @override
  final DateTime applicableDate;
  @override
  final String weatherStateName;
  @override
  final String weatherStateAbbreviation;
  @override
  final double windSpeed;
  @override
  final double windDirection;
  @override
  final String windDirectionCompass;
  @override
  final double minTemp;
  @override
  final double maxTemp;
  @override
  final double theTemp;
  @override
  final double airPressure;
  @override
  final double humidity;
  @override
  final double visibility;
  @override
  final int predictability;

  factory _$Weather([void Function(WeatherBuilder)? updates]) =>
      (new WeatherBuilder()..update(updates)).build();

  _$Weather._(
      {required this.id,
      required this.applicableDate,
      required this.weatherStateName,
      required this.weatherStateAbbreviation,
      required this.windSpeed,
      required this.windDirection,
      required this.windDirectionCompass,
      required this.minTemp,
      required this.maxTemp,
      required this.theTemp,
      required this.airPressure,
      required this.humidity,
      required this.visibility,
      required this.predictability})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Weather', 'id');
    BuiltValueNullFieldError.checkNotNull(
        applicableDate, 'Weather', 'applicableDate');
    BuiltValueNullFieldError.checkNotNull(
        weatherStateName, 'Weather', 'weatherStateName');
    BuiltValueNullFieldError.checkNotNull(
        weatherStateAbbreviation, 'Weather', 'weatherStateAbbreviation');
    BuiltValueNullFieldError.checkNotNull(windSpeed, 'Weather', 'windSpeed');
    BuiltValueNullFieldError.checkNotNull(
        windDirection, 'Weather', 'windDirection');
    BuiltValueNullFieldError.checkNotNull(
        windDirectionCompass, 'Weather', 'windDirectionCompass');
    BuiltValueNullFieldError.checkNotNull(minTemp, 'Weather', 'minTemp');
    BuiltValueNullFieldError.checkNotNull(maxTemp, 'Weather', 'maxTemp');
    BuiltValueNullFieldError.checkNotNull(theTemp, 'Weather', 'theTemp');
    BuiltValueNullFieldError.checkNotNull(
        airPressure, 'Weather', 'airPressure');
    BuiltValueNullFieldError.checkNotNull(humidity, 'Weather', 'humidity');
    BuiltValueNullFieldError.checkNotNull(visibility, 'Weather', 'visibility');
    BuiltValueNullFieldError.checkNotNull(
        predictability, 'Weather', 'predictability');
  }

  @override
  Weather rebuild(void Function(WeatherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherBuilder toBuilder() => new WeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Weather &&
        id == other.id &&
        applicableDate == other.applicableDate &&
        weatherStateName == other.weatherStateName &&
        weatherStateAbbreviation == other.weatherStateAbbreviation &&
        windSpeed == other.windSpeed &&
        windDirection == other.windDirection &&
        windDirectionCompass == other.windDirectionCompass &&
        minTemp == other.minTemp &&
        maxTemp == other.maxTemp &&
        theTemp == other.theTemp &&
        airPressure == other.airPressure &&
        humidity == other.humidity &&
        visibility == other.visibility &&
        predictability == other.predictability;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(0, id.hashCode),
                                                        applicableDate
                                                            .hashCode),
                                                    weatherStateName.hashCode),
                                                weatherStateAbbreviation
                                                    .hashCode),
                                            windSpeed.hashCode),
                                        windDirection.hashCode),
                                    windDirectionCompass.hashCode),
                                minTemp.hashCode),
                            maxTemp.hashCode),
                        theTemp.hashCode),
                    airPressure.hashCode),
                humidity.hashCode),
            visibility.hashCode),
        predictability.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Weather')
          ..add('id', id)
          ..add('applicableDate', applicableDate)
          ..add('weatherStateName', weatherStateName)
          ..add('weatherStateAbbreviation', weatherStateAbbreviation)
          ..add('windSpeed', windSpeed)
          ..add('windDirection', windDirection)
          ..add('windDirectionCompass', windDirectionCompass)
          ..add('minTemp', minTemp)
          ..add('maxTemp', maxTemp)
          ..add('theTemp', theTemp)
          ..add('airPressure', airPressure)
          ..add('humidity', humidity)
          ..add('visibility', visibility)
          ..add('predictability', predictability))
        .toString();
  }
}

class WeatherBuilder implements Builder<Weather, WeatherBuilder> {
  _$Weather? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  DateTime? _applicableDate;
  DateTime? get applicableDate => _$this._applicableDate;
  set applicableDate(DateTime? applicableDate) =>
      _$this._applicableDate = applicableDate;

  String? _weatherStateName;
  String? get weatherStateName => _$this._weatherStateName;
  set weatherStateName(String? weatherStateName) =>
      _$this._weatherStateName = weatherStateName;

  String? _weatherStateAbbreviation;
  String? get weatherStateAbbreviation => _$this._weatherStateAbbreviation;
  set weatherStateAbbreviation(String? weatherStateAbbreviation) =>
      _$this._weatherStateAbbreviation = weatherStateAbbreviation;

  double? _windSpeed;
  double? get windSpeed => _$this._windSpeed;
  set windSpeed(double? windSpeed) => _$this._windSpeed = windSpeed;

  double? _windDirection;
  double? get windDirection => _$this._windDirection;
  set windDirection(double? windDirection) =>
      _$this._windDirection = windDirection;

  String? _windDirectionCompass;
  String? get windDirectionCompass => _$this._windDirectionCompass;
  set windDirectionCompass(String? windDirectionCompass) =>
      _$this._windDirectionCompass = windDirectionCompass;

  double? _minTemp;
  double? get minTemp => _$this._minTemp;
  set minTemp(double? minTemp) => _$this._minTemp = minTemp;

  double? _maxTemp;
  double? get maxTemp => _$this._maxTemp;
  set maxTemp(double? maxTemp) => _$this._maxTemp = maxTemp;

  double? _theTemp;
  double? get theTemp => _$this._theTemp;
  set theTemp(double? theTemp) => _$this._theTemp = theTemp;

  double? _airPressure;
  double? get airPressure => _$this._airPressure;
  set airPressure(double? airPressure) => _$this._airPressure = airPressure;

  double? _humidity;
  double? get humidity => _$this._humidity;
  set humidity(double? humidity) => _$this._humidity = humidity;

  double? _visibility;
  double? get visibility => _$this._visibility;
  set visibility(double? visibility) => _$this._visibility = visibility;

  int? _predictability;
  int? get predictability => _$this._predictability;
  set predictability(int? predictability) =>
      _$this._predictability = predictability;

  WeatherBuilder();

  WeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _applicableDate = $v.applicableDate;
      _weatherStateName = $v.weatherStateName;
      _weatherStateAbbreviation = $v.weatherStateAbbreviation;
      _windSpeed = $v.windSpeed;
      _windDirection = $v.windDirection;
      _windDirectionCompass = $v.windDirectionCompass;
      _minTemp = $v.minTemp;
      _maxTemp = $v.maxTemp;
      _theTemp = $v.theTemp;
      _airPressure = $v.airPressure;
      _humidity = $v.humidity;
      _visibility = $v.visibility;
      _predictability = $v.predictability;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Weather other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Weather;
  }

  @override
  void update(void Function(WeatherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Weather build() {
    final _$result = _$v ??
        new _$Weather._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'Weather', 'id'),
            applicableDate: BuiltValueNullFieldError.checkNotNull(
                applicableDate, 'Weather', 'applicableDate'),
            weatherStateName: BuiltValueNullFieldError.checkNotNull(
                weatherStateName, 'Weather', 'weatherStateName'),
            weatherStateAbbreviation: BuiltValueNullFieldError.checkNotNull(
                weatherStateAbbreviation, 'Weather', 'weatherStateAbbreviation'),
            windSpeed: BuiltValueNullFieldError.checkNotNull(
                windSpeed, 'Weather', 'windSpeed'),
            windDirection: BuiltValueNullFieldError.checkNotNull(
                windDirection, 'Weather', 'windDirection'),
            windDirectionCompass: BuiltValueNullFieldError.checkNotNull(
                windDirectionCompass, 'Weather', 'windDirectionCompass'),
            minTemp: BuiltValueNullFieldError.checkNotNull(
                minTemp, 'Weather', 'minTemp'),
            maxTemp:
                BuiltValueNullFieldError.checkNotNull(maxTemp, 'Weather', 'maxTemp'),
            theTemp: BuiltValueNullFieldError.checkNotNull(theTemp, 'Weather', 'theTemp'),
            airPressure: BuiltValueNullFieldError.checkNotNull(airPressure, 'Weather', 'airPressure'),
            humidity: BuiltValueNullFieldError.checkNotNull(humidity, 'Weather', 'humidity'),
            visibility: BuiltValueNullFieldError.checkNotNull(visibility, 'Weather', 'visibility'),
            predictability: BuiltValueNullFieldError.checkNotNull(predictability, 'Weather', 'predictability'));
    replace(_$result);
    return _$result;
  }
}

class _$Location extends Location {
  @override
  final int id;
  @override
  final String title;
  @override
  final String locationType;

  factory _$Location([void Function(LocationBuilder)? updates]) =>
      (new LocationBuilder()..update(updates)).build();

  _$Location._(
      {required this.id, required this.title, required this.locationType})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'Location', 'id');
    BuiltValueNullFieldError.checkNotNull(title, 'Location', 'title');
    BuiltValueNullFieldError.checkNotNull(
        locationType, 'Location', 'locationType');
  }

  @override
  Location rebuild(void Function(LocationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationBuilder toBuilder() => new LocationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Location &&
        id == other.id &&
        title == other.title &&
        locationType == other.locationType;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, id.hashCode), title.hashCode), locationType.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Location')
          ..add('id', id)
          ..add('title', title)
          ..add('locationType', locationType))
        .toString();
  }
}

class LocationBuilder implements Builder<Location, LocationBuilder> {
  _$Location? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _locationType;
  String? get locationType => _$this._locationType;
  set locationType(String? locationType) => _$this._locationType = locationType;

  LocationBuilder();

  LocationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _title = $v.title;
      _locationType = $v.locationType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Location other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Location;
  }

  @override
  void update(void Function(LocationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Location build() {
    final _$result = _$v ??
        new _$Location._(
            id: BuiltValueNullFieldError.checkNotNull(id, 'Location', 'id'),
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'Location', 'title'),
            locationType: BuiltValueNullFieldError.checkNotNull(
                locationType, 'Location', 'locationType'));
    replace(_$result);
    return _$result;
  }
}

class _$LocationWeather extends LocationWeather {
  @override
  final int id;
  @override
  final Location location;
  @override
  final BuiltList<Weather> weather;
  @override
  final DateTime sunRise;
  @override
  final DateTime sunSet;

  factory _$LocationWeather([void Function(LocationWeatherBuilder)? updates]) =>
      (new LocationWeatherBuilder()..update(updates)).build();

  _$LocationWeather._(
      {required this.id,
      required this.location,
      required this.weather,
      required this.sunRise,
      required this.sunSet})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'LocationWeather', 'id');
    BuiltValueNullFieldError.checkNotNull(
        location, 'LocationWeather', 'location');
    BuiltValueNullFieldError.checkNotNull(
        weather, 'LocationWeather', 'weather');
    BuiltValueNullFieldError.checkNotNull(
        sunRise, 'LocationWeather', 'sunRise');
    BuiltValueNullFieldError.checkNotNull(sunSet, 'LocationWeather', 'sunSet');
  }

  @override
  LocationWeather rebuild(void Function(LocationWeatherBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationWeatherBuilder toBuilder() =>
      new LocationWeatherBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationWeather &&
        id == other.id &&
        location == other.location &&
        weather == other.weather &&
        sunRise == other.sunRise &&
        sunSet == other.sunSet;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, id.hashCode), location.hashCode), weather.hashCode),
            sunRise.hashCode),
        sunSet.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LocationWeather')
          ..add('id', id)
          ..add('location', location)
          ..add('weather', weather)
          ..add('sunRise', sunRise)
          ..add('sunSet', sunSet))
        .toString();
  }
}

class LocationWeatherBuilder
    implements Builder<LocationWeather, LocationWeatherBuilder> {
  _$LocationWeather? _$v;

  int? _id;
  int? get id => _$this._id;
  set id(int? id) => _$this._id = id;

  LocationBuilder? _location;
  LocationBuilder get location => _$this._location ??= new LocationBuilder();
  set location(LocationBuilder? location) => _$this._location = location;

  ListBuilder<Weather>? _weather;
  ListBuilder<Weather> get weather =>
      _$this._weather ??= new ListBuilder<Weather>();
  set weather(ListBuilder<Weather>? weather) => _$this._weather = weather;

  DateTime? _sunRise;
  DateTime? get sunRise => _$this._sunRise;
  set sunRise(DateTime? sunRise) => _$this._sunRise = sunRise;

  DateTime? _sunSet;
  DateTime? get sunSet => _$this._sunSet;
  set sunSet(DateTime? sunSet) => _$this._sunSet = sunSet;

  LocationWeatherBuilder();

  LocationWeatherBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _location = $v.location.toBuilder();
      _weather = $v.weather.toBuilder();
      _sunRise = $v.sunRise;
      _sunSet = $v.sunSet;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationWeather other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocationWeather;
  }

  @override
  void update(void Function(LocationWeatherBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LocationWeather build() {
    _$LocationWeather _$result;
    try {
      _$result = _$v ??
          new _$LocationWeather._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'LocationWeather', 'id'),
              location: location.build(),
              weather: weather.build(),
              sunRise: BuiltValueNullFieldError.checkNotNull(
                  sunRise, 'LocationWeather', 'sunRise'),
              sunSet: BuiltValueNullFieldError.checkNotNull(
                  sunSet, 'LocationWeather', 'sunSet'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'location';
        location.build();
        _$failedField = 'weather';
        weather.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LocationWeather', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
