// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'time_of_day_adapter.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HiveTimeOfDayyAdapter extends TypeAdapter<HiveTimeOfDayy> {
  @override
  final int typeId = 2;

  @override
  HiveTimeOfDayy read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HiveTimeOfDayy(
      fields[0] as int,
      fields[1] as int,
    );
  }

  @override
  void write(BinaryWriter writer, HiveTimeOfDayy obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.hour)
      ..writeByte(1)
      ..write(obj.minute);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HiveTimeOfDayyAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
