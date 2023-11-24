import 'package:flutter/material.dart';
import 'package:my_health/core/class/StatusRequest.dart';

class HandlingDataView extends StatelessWidget {
  final StatusRequest statusRequest;
  final Widget widget;
  const HandlingDataView(
      {super.key, required this.statusRequest, required this.widget});

  @override
  Widget build(BuildContext context) {
    return statusRequest == StatusRequest.loading
        ? const Center(
            child: Text("loading"),
          )
        : statusRequest == StatusRequest.offlinefailure
            ? const Center(child: Text("off line Faileuer"))
            : statusRequest == StatusRequest.serverfailure
                ? const Center(child: Text("server failure"))
                : statusRequest == StatusRequest.failure
                    ? const Center(child: Text("No Data"))
                    : widget;
  }
}
