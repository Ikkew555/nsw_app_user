// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:nsw_app/config.dart';
import 'package:nsw_app/pages/track_status_cancel/cancel.view.dto.dart';
import 'package:nsw_app/service/cancel.data.dart';

class CancelView extends StatefulWidget {
  const CancelView({Key? key, required this.cancelDto}) : super(key: key);

  final CancelDto cancelDto;

  @override
  State<CancelView> createState() => _CancelViewState();
}

class _CancelViewState extends State<CancelView> {
  late CancelDto cancelDto;
  @override
  void initState() {
    super.initState();
    setState(() {
      cancelDto = widget.cancelDto;
    });
  }

  // *NOTE: Search Functions

  // *NOTE: List ที่เอาไว้แสดง
  List<CancelModel> display_list = List.from(items_cancel);

  // *NOTE: ฟังก์ชั่นไว้กรองชื่อใน list
  // !TODO : ทำ loop ให้โชว์แค่ 5 อัน
  // !TODO : filter with 2 conditions
  void updateList(String value) {
    setState(() {
      display_list = items_cancel
          .where((element) =>
              element.title!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 5.0),
          child: TextField(
            onChanged: (value) => updateList(value),
            style: TextStyle(
              color: Config.instance.primarycolor,
            ),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.blueGrey[100],
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
              hintText: "ตัวอย่าง คำร้อง A",
              hintStyle: Config.instance.f14normalprimary,
              suffixIcon: Icon(
                Icons.search,
                color: Config.instance.primarycolor,
              ),
            ),
          ),
        ),
        Expanded(
          child: display_list.isEmpty
              ? Center(
                  child: Text(
                    "ไม่พบข้อมูล",
                    style: TextStyle(
                      color: Config.instance.primarycolor,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                )
              : ListView.builder(
                  itemCount: display_list.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 10.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 1,
                            offset: Offset(0, 2), // Shadow position
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.0),
                                bottomLeft: Radius.circular(5.0),
                              ),
                              color: display_list[index].color,
                            ),
                            height: 90,
                            width: 7,
                            alignment: Alignment.center,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(5.0),
                                bottomLeft: Radius.circular(5.0),
                              ),
                            ),
                            height: 90,
                            width: MediaQuery.of(context).size.width - 35,
                            alignment: Alignment.center,
                            child: ListTile(
                              contentPadding: EdgeInsets.all(8),
                              title: Text(
                                display_list[index].title!,
                                style: Config.instance.f16boldprimary,
                              ),
                              subtitle: Text(
                                display_list[index].subtitle!,
                                style: Config.instance.f14normalgrey,
                              ),
                              leading: Image.asset(
                                display_list[index].system_image_url!,
                              ),
                              trailing: Text(
                                display_list[index].track_number!,
                                style: Config.instance.f14normalgrey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
        ),
      ],
    );
  }

  HandleonPressedShowSystem() {
    cancelDto.onPressedShowSystem.call();
  }
}
