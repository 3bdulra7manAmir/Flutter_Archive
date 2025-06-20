// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hive_database.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class InfoAdapter extends TypeAdapter<Info> {
  @override
  final int typeId = 1;

  @override
  Info read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return Info(
      id: fields[0] == null ? 0 : fields[0] as int?,
      imgPath: fields[1] == null
          ? 'assets/images/icons/svg/Crown.svg'
          : fields[1] as String?,
      titleText: fields[2] == null ? 'Hill, Hydra' : fields[2] as String?,
      subTitleText: fields[3] == null
          ? "Cut of One Head to more Shall take it's Place"
          : fields[3] as String?,
    );
  }

  @override
  void write(BinaryWriter writer, Info obj) {
    writer
      ..writeByte(4)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.imgPath)
      ..writeByte(2)
      ..write(obj.titleText)
      ..writeByte(3)
      ..write(obj.subTitleText);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is InfoAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
