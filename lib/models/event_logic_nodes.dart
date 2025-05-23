import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_logic_nodes.freezed.dart';

enum ConStatus {
  noCon, // not connected in any way
  advert, // not connected, but has advertised data
  conLoRa, // FC is connected to UI via GS via LoRa
  conUSB, // connected to UI via USB
  conBT, // GS is connected to UI via Bluetooth
}

enum DeviceType { fc, gs, unknown }

@freezed
sealed class EventLogicNode with _$EventLogicNode {
  const factory EventLogicNode({
    required String name,
    required int id,
    required double batteryLevel,
    required ConStatus conStatus,
    required Color? color,
    required String firmwareVer,
    required DeviceType type,
    required int rssi,
  }) = _EventLogicNode;
}
