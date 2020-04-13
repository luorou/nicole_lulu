import 'package:nicolelulu/model/model_obj.dart';

modelObjFromJson(ModelObj data, Map<String, dynamic> json) {
	if (json['A1'] != null) {
		data.a1 = json['A1']?.toString();
	}
	if (json['A2'] != null) {
		data.a2 = json['A2']?.toString();
	}
	if (json['N'] != null) {
		data.n = json['N']?.toString();
	}
	if (json['M'] != null) {
		data.m = json['M']?.toString();
	}
	if (json['S'] != null) {
		data.s = json['S']?.toString();
	}
	if (json['C'] != null) {
		data.c = json['C']?.toString();
	}
	if (json['FS'] != null) {
		data.fS = json['FS']?.toString();
	}
	if (json['P'] != null) {
		data.p = json['P']?.toDouble();
	}
	if (json['NV'] != null) {
		data.nV = json['NV']?.toDouble();
	}
	if (json['Time'] != null) {
		data.time = json['Time']?.toString();
	}
	if (json['Tick'] != null) {
		data.tick = json['Tick']?.toInt();
	}
	if (json['B1'] != null) {
		data.b1 = json['B1']?.toDouble();
	}
	if (json['B2'] != null) {
		data.b2 = json['B2']?.toDouble();
	}
	if (json['B3'] != null) {
		data.b3 = json['B3']?.toDouble();
	}
	if (json['B4'] != null) {
		data.b4 = json['B4']?.toDouble();
	}
	if (json['B5'] != null) {
		data.b5 = json['B5']?.toDouble();
	}
	if (json['B1V'] != null) {
		data.b1V = json['B1V']?.toInt();
	}
	if (json['B2V'] != null) {
		data.b2V = json['B2V']?.toInt();
	}
	if (json['B3V'] != null) {
		data.b3V = json['B3V']?.toInt();
	}
	if (json['B4V'] != null) {
		data.b4V = json['B4V']?.toInt();
	}
	if (json['B5V'] != null) {
		data.b5V = json['B5V']?.toInt();
	}
	if (json['S1'] != null) {
		data.s1 = json['S1']?.toDouble();
	}
	if (json['S2'] != null) {
		data.s2 = json['S2']?.toDouble();
	}
	if (json['S3'] != null) {
		data.s3 = json['S3']?.toDouble();
	}
	if (json['S4'] != null) {
		data.s4 = json['S4']?.toDouble();
	}
	if (json['S5'] != null) {
		data.s5 = json['S5']?.toDouble();
	}
	if (json['S1V'] != null) {
		data.s1V = json['S1V']?.toInt();
	}
	if (json['S2V'] != null) {
		data.s2V = json['S2V']?.toInt();
	}
	if (json['S3V'] != null) {
		data.s3V = json['S3V']?.toInt();
	}
	if (json['S4V'] != null) {
		data.s4V = json['S4V']?.toInt();
	}
	if (json['S5V'] != null) {
		data.s5V = json['S5V']?.toInt();
	}
	if (json['ZT'] != null) {
		data.zT = json['ZT']?.toDouble();
	}
	if (json['DT'] != null) {
		data.dT = json['DT']?.toDouble();
	}
	if (json['O'] != null) {
		data.o = json['O']?.toDouble();
	}
	if (json['H'] != null) {
		data.h = json['H']?.toDouble();
	}
	if (json['L'] != null) {
		data.l = json['L']?.toDouble();
	}
	if (json['YC'] != null) {
		data.yC = json['YC']?.toDouble();
	}
	if (json['A'] != null) {
		data.a = json['A']?.toDouble();
	}
	if (json['V'] != null) {
		data.v = json['V']?.toDouble();
	}
	if (json['OV'] != null) {
		data.oV = json['OV']?.toInt();
	}
	if (json['IV'] != null) {
		data.iV = json['IV']?.toInt();
	}
	if (json['SY'] != null) {
		data.sY = json['SY']?.toInt();
	}
	if (json['SJ'] != null) {
		data.sJ = json['SJ']?.toInt();
	}
	if (json['HS'] != null) {
		data.hS = json['HS']?.toInt();
	}
	if (json['ZS'] != null) {
		data.zS = json['ZS']?.toDouble();
	}
	if (json['LS'] != null) {
		data.lS = json['LS']?.toDouble();
	}
	if (json['Z'] != null) {
		data.z = json['Z']?.toDouble();
	}
	if (json['Z2'] != null) {
		data.z2 = json['Z2']?.toDouble();
	}
	if (json['VF'] != null) {
		data.vF = json['VF']?.toDouble();
	}
	if (json['ZF'] != null) {
		data.zF = json['ZF']?.toDouble();
	}
	if (json['JS'] != null) {
		data.jS = json['JS']?.toInt();
	}
	if (json['YJS'] != null) {
		data.yJS = json['YJS']?.toInt();
	}
	if (json['HD'] != null) {
		data.hD = json['HD']?.toInt();
	}
	if (json['YHD'] != null) {
		data.yHD = json['YHD']?.toInt();
	}
	if (json['AVP'] != null) {
		data.aVP = json['AVP']?.toInt();
	}
	if (json['SY2'] != null) {
		data.sY2 = json['SY2']?.toInt();
	}
	if (json['QJ'] != null) {
		data.qJ = json['QJ']?.toInt();
	}
	if (json['N2'] != null) {
		data.n2 = json['N2']?.toString();
	}
	if (json['QR'] != null) {
		data.qR = json['QR']?.toString();
	}
	return data;
}

Map<String, dynamic> modelObjToJson(ModelObj entity) {
	final Map<String, dynamic> data = new Map<String, dynamic>();
	data['A1'] = entity.a1;
	data['A2'] = entity.a2;
	data['N'] = entity.n;
	data['M'] = entity.m;
	data['S'] = entity.s;
	data['C'] = entity.c;
	data['FS'] = entity.fS;
	data['P'] = entity.p;
	data['NV'] = entity.nV;
	data['Time'] = entity.time;
	data['Tick'] = entity.tick;
	data['B1'] = entity.b1;
	data['B2'] = entity.b2;
	data['B3'] = entity.b3;
	data['B4'] = entity.b4;
	data['B5'] = entity.b5;
	data['B1V'] = entity.b1V;
	data['B2V'] = entity.b2V;
	data['B3V'] = entity.b3V;
	data['B4V'] = entity.b4V;
	data['B5V'] = entity.b5V;
	data['S1'] = entity.s1;
	data['S2'] = entity.s2;
	data['S3'] = entity.s3;
	data['S4'] = entity.s4;
	data['S5'] = entity.s5;
	data['S1V'] = entity.s1V;
	data['S2V'] = entity.s2V;
	data['S3V'] = entity.s3V;
	data['S4V'] = entity.s4V;
	data['S5V'] = entity.s5V;
	data['ZT'] = entity.zT;
	data['DT'] = entity.dT;
	data['O'] = entity.o;
	data['H'] = entity.h;
	data['L'] = entity.l;
	data['YC'] = entity.yC;
	data['A'] = entity.a;
	data['V'] = entity.v;
	data['OV'] = entity.oV;
	data['IV'] = entity.iV;
	data['SY'] = entity.sY;
	data['SJ'] = entity.sJ;
	data['HS'] = entity.hS;
	data['ZS'] = entity.zS;
	data['LS'] = entity.lS;
	data['Z'] = entity.z;
	data['Z2'] = entity.z2;
	data['VF'] = entity.vF;
	data['ZF'] = entity.zF;
	data['JS'] = entity.jS;
	data['YJS'] = entity.yJS;
	data['HD'] = entity.hD;
	data['YHD'] = entity.yHD;
	data['AVP'] = entity.aVP;
	data['SY2'] = entity.sY2;
	data['QJ'] = entity.qJ;
	data['N2'] = entity.n2;
	data['QR'] = entity.qR;
	return data;
}