import 'package:nicolelulu/generated/json/base/json_convert_content.dart';
import 'package:nicolelulu/generated/json/base/json_filed.dart';

import '../entity/k_entity.dart';

class KLineEntity extends KEntity with JsonConvert<KLineEntity> {
  @JSONField(name: "C")
  double close;
  @JSONField(name: "Tick")
  int time;
  @JSONField(name: "D")
  String day;
  @JSONField(name: "O")
  double open;
  @JSONField(name: "H")
  double high;
  @JSONField(name: "L")
  double low;
  @JSONField(name: "A")
  double amount;
  @JSONField(name: "V")
  double vol;
  double change=1;
  double ratio=0;

  KLineEntity({this.amount, this.open, this.close, this.time, this.high, this.low, this.vol, this.change, this.ratio});

  KLineEntity.fromCustom(
      {this.amount, this.open, this.close, this.time, this.high, this.low, this.vol, this.change, this.ratio});
}
