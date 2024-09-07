import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

part 'time_of_day_adapter.g.dart';

@HiveType(typeId: 2)
class HiveTimeOfDayy extends HiveObject {
  @HiveField(0)
  final int hour;

  @HiveField(1)
  final int minute;

  HiveTimeOfDayy(this.hour, this.minute);

  TimeOfDay toTimeOfDay() => TimeOfDay(hour: hour, minute: minute);
}

class TimeOfDayAdapterrrr extends TypeAdapter<HiveTimeOfDayy> {
  @override
  final int typeId = 2;

  @override
  HiveTimeOfDayy read(BinaryReader reader) {
    final hour = reader.readInt();
    final minute = reader.readInt();
    return HiveTimeOfDayy(hour, minute);
  }

  @override
  void write(BinaryWriter writer, HiveTimeOfDayy obj) {
    writer.writeInt(obj.hour);
    writer.writeInt(obj.minute);
  }
}
