// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offers.model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class OfferModelAdapter extends TypeAdapter<OfferModel> {
  @override
  OfferModel read(BinaryReader reader) {
    var numOfFields = reader.readByte();
    var fields = <int, dynamic>{
      for (var i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return OfferModel(
      id: fields[0] as String,
      price: fields[1] as int,
      product: fields[2] as ProductModel,
    );
  }

  @override
  void write(BinaryWriter writer, OfferModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.price)
      ..writeByte(2)
      ..write(obj.product);
  }
}
