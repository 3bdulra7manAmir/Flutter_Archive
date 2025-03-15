// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_database.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CardInfoAdapter extends TypeAdapter<Info> {
  @override
  final int typeId = 1;

  @override
  Info read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Info(
      imgPath: fields[0] as String,
      titleText: fields[1] == null ? 'Hill, Hydra' : fields[1] as String,
      subTitleText: fields[2] == null
          ? "Cut of One Head to more Shall take it's Place"
          : fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, Info obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.imgPath)
      ..writeByte(1)
      ..write(obj.titleText)
      ..writeByte(2)
      ..write(obj.subTitleText);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CardInfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
