import 'package:flutter/material.dart';
import 'package:remote_bf/app/data/api/bluetooth_api.dart';
import 'package:remote_bf/app/data/vo/ble/ble_model_vo.dart';
import 'package:remote_bf/res/bf_color.dart';
import 'package:remote_bf/res/bf_graphy.dart';

typedef CallBackBleModel = Function(BleModelVo);

class BlueToothConnectPopup extends StatefulWidget {
  const BlueToothConnectPopup(
      {super.key,
      required this.register,
      required this.canConnect,
      this.onPressed});

  final List<BleModelVo> register;
  final List<BleModelVo> canConnect;
  final CallBackBleModel? onPressed;

  @override
  State<BlueToothConnectPopup> createState() => _BlueToothConnectPopupState();
}

class _BlueToothConnectPopupState extends State<BlueToothConnectPopup> {
  List<BleModelVo> register = [];
  List<BleModelVo> canConnect = [];

  @override
  void initState() {
    super.initState();
    register = widget.register;
    canConnect = widget.canConnect;
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(40),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color: BFColor.gray200,
                  borderRadius: BorderRadius.circular(14)),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(32, 24, 32, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        "블루투스",
                        textAlign: TextAlign.center,
                        style: BFGraphy.bfText2023.body2.copyWith(
                            height: 1.5,
                            fontWeight: FontWeight.w700,
                            color: BFColor.white),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "등록된 기기",
                      style: BFGraphy.bfText2023.body2
                          .copyWith(height: 1.5, color: BFColor.white),
                    ),
                    register.isEmpty
                        ? bleDeviceListTIle(
                            BleModelVo(deviceName: "등록된 기기가 없습니다.", rssi: 0),
                            false)
                        : SingleChildScrollView(
                            child: Column(
                              children: List.generate(register.length, (index) {
                                return bleDeviceListTIle(
                                    register[index], index == 0);
                              }),
                            ),
                          ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      "연결 가능한 기기",
                      style: BFGraphy.bfText2023.body2
                          .copyWith(height: 1.5, color: BFColor.white),
                    ),
                    canConnect.isEmpty
                        ? bleDeviceListTIle(
                            BleModelVo(deviceName: "연결 가능한 기기가 없습니다", rssi: 0),
                            false)
                        : SingleChildScrollView(
                            child: Column(
                              children:
                                  List.generate(canConnect.length, (index) {
                                return bleDeviceListTIle(
                                    canConnect[index], false);
                              }),
                            ),
                          ),
                    SizedBox(
                      height: 24,
                    ),
                    Container(
                      width: double.infinity,
                      height: 1,
                      color: BFColor.gray300,
                    ),
                    Row(
                      children: [
                        Expanded(
                            child: InkWell(
                          onTap: () {
                            Navigator.of(context).pop();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Center(
                                child: Text(
                              "닫기",
                              style: BFGraphy.bfText2023.body2,
                            )),
                          ),
                        )),
                        Container(
                          width: 1,
                          color: BFColor.gray300,
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "",
                              style: BFGraphy.bfText2023.body2,
                            ),
                          ),
                        ),
                        Expanded(
                            child: InkWell(
                          onTap: () async {
                            register = await BlueToothApi.getRegisteredDevice();
                            canConnect =
                                await BlueToothApi.getCanConnectDevice();
                            setState(() {});
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(15),
                            child: Center(
                                child: Text(
                              "재탐색",
                              style: BFGraphy.bfText2023.body2
                                  .copyWith(color: BFColor.gold),
                            )),
                          ),
                        )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  bleDeviceListTIle(BleModelVo bleModelVo, bool isConnect) {
    return InkWell(
      onTap: () {
        widget.onPressed!(bleModelVo);
      },
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
                child: Text(
              bleModelVo.deviceName,
              style: BFGraphy.bfText2023.body2.copyWith(color: BFColor.gray500),
            )),
            isConnect
                ? Text(
                    "연결됨",
                    style:
                        BFGraphy.bfText2023.body2.copyWith(color: BFColor.gold),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }
}
