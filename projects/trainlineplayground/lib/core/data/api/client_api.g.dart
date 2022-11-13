// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'client_api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Tickets _$TicketsFromJson(Map<String, dynamic> json) => Tickets(
      trainTime: json['trainTime'] as String?,
      trainarriveTime: json['trainarriveTime'] as String?,
      standardPrice: json['standardPrice'] as String?,
      firstClassPrice: json['firstClassPrice'] as String?,
      busTime: json['busTime'] as String?,
      busArriveTime: json['busArriveTime'] as String?,
      busPrice: json['busPrice'] as String?,
      kalkisYeri: json['kalkisYeri'] as String?,
      varisYeri: json['varisYeri'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$TicketsToJson(Tickets instance) => <String, dynamic>{
      'trainTime': instance.trainTime,
      'trainarriveTime': instance.trainarriveTime,
      'standardPrice': instance.standardPrice,
      'firstClassPrice': instance.firstClassPrice,
      'busTime': instance.busTime,
      'busArriveTime': instance.busArriveTime,
      'busPrice': instance.busPrice,
      'kalkisYeri': instance.kalkisYeri,
      'varisYeri': instance.varisYeri,
      'id': instance.id,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RestClient implements RestClient {
  _RestClient(
    this._dio, {
    this.baseUrl,
  }) {
    baseUrl ??= 'https://6370c24f0399d1995d8356d2.mockapi.io/';
  }

  final Dio _dio;

  String? baseUrl;

  @override
  Future<List<Tickets>> getTasks() async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final _data = <String, dynamic>{};
    final _result =
        await _dio.fetch<List<dynamic>>(_setStreamType<List<Tickets>>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/tickets',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    var value = _result.data!
        .map((dynamic i) => Tickets.fromJson(i as Map<String, dynamic>))
        .toList();
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}