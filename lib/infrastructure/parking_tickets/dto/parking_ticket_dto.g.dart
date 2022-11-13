// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'parking_ticket_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ParkingTicketDto _$$_ParkingTicketDtoFromJson(Map<String, dynamic> json) =>
    _$_ParkingTicketDto(
      id: json['id'] as int,
      licensePlate: json['licensePlate'] as String,
      parkingDate: json['date'] as String,
      startTime: json['startTime'] as String,
      endTime: json['endTime'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      userCuil: json['userCuil'] as String,
    );

Map<String, dynamic> _$$_ParkingTicketDtoToJson(_$_ParkingTicketDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'licensePlate': instance.licensePlate,
      'date': instance.parkingDate,
      'startTime': instance.startTime,
      'endTime': instance.endTime,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'userCuil': instance.userCuil,
    };
