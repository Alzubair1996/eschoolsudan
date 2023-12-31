import 'package:flutter/material.dart';

import 'EmtyAppBar.dart';
import 'Liests.dart';
import 'lision.dart';

class ListScreen extends StatefulWidget {
  List a1;
  String name;
  String item;
  int education1;
  int grades1;
  int subjects1;
  int units1;
  int lessons1;

  ListScreen(
      {super.key,
      required this.item,
      required this.name,
      required this.a1,
      required this.education1,
      required this.grades1,
      required this.subjects1,
      required this.units1,
      required this.lessons1});

  @override
  State<ListScreen> createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const EmptyAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    flex: widget.units1 == -1 ? 0 : 1,
                    child: Visibility(
                      visible: widget.units1 == -1 ? false : true,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.tealAccent,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                widget.units1 == -1
                                    ? ""
                                    : Educationa
                                        .stages[widget.grades1]
                                        .grades[widget.subjects1]
                                        .subjects[widget.units1]
                                        .name,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )),
                Expanded(
                    flex: widget.subjects1 == -1 ? 0 : 1,
                    child: Visibility(
                      visible: widget.subjects1 == -1 ? false : true,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.tealAccent,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                widget.subjects1 == -1
                                    ? ""
                                    : Educationa.stages[widget.grades1]
                                        .grades[widget.subjects1].name,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )),
                Expanded(
                    flex: widget.grades1 == -1 ? 0 : 1,
                    child: Visibility(
                      visible: widget.grades1 == -1 ? false : true,
                      child: ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.tealAccent,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 2,
                                blurRadius: 5,
                                offset: const Offset(0, 3),
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Align(
                              alignment: Alignment.center,
                              child: Text(
                                widget.grades1 == -1
                                    ? ""
                                    : Educationa.stages[widget.grades1].name,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )),
                Expanded(
                    flex: 1,
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(20.0), // الزاوية اليسرى العليا
                        bottomLeft:
                            Radius.circular(20.0), // الزاوية اليسرى السفلية
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.tealAccent,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5), // لون الظل
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3), // تحديد موقع الظل
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              widget.name,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )),
              ],
            ),
            Visibility(
              visible: widget.item == "" ? false : true,
              child: Container(
                width: double.maxFinite,
                color: Colors.tealAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      widget.item,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: widget.a1.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        if (widget.grades1 == -1 ||
                            widget.subjects1 == -1 ||
                            widget.units1 == -1 ||
                            widget.lessons1 == -1) {
                          List aa = widget.grades1 == -1
                              ? Educationa.stages[index].grades
                              : widget.subjects1 == -1
                                  ? Educationa.stages[widget.grades1]
                                      .grades[index].subjects
                                  : widget.units1 == -1
                                      ? Educationa
                                          .stages[widget.grades1]
                                          .grades[widget.subjects1]
                                          .subjects[index]
                                          .units
                                      : Educationa
                                          .stages[widget.grades1]
                                          .grades[widget.subjects1]
                                          .subjects[widget.units1]
                                          .units[index]
                                          .lessons;

                          setState(() {
                            widget.item = widget.units1 == -1
                                ? ""
                                : Educationa
                                    .stages[widget.grades1]
                                    .grades[widget.subjects1]
                                    .subjects[widget.units1]
                                    .units[index]
                                    .name;
                            widget.name = "المراحل الدراسية";
                            widget.education1 = widget.education1;
                            widget.lessons1 = widget.units1 != -1
                                ? widget.lessons1 == -1
                                    ? index
                                    : widget.lessons1
                                : -1;
                            widget.units1 = widget.subjects1 != -1
                                ? widget.units1 == -1
                                    ? index
                                    : widget.units1
                                : -1;
                            widget.subjects1 = widget.grades1 != -1
                                ? widget.subjects1 == -1
                                    ? index
                                    : widget.subjects1
                                : -1;
                            widget.grades1 =
                                widget.grades1 == -1 ? index : widget.grades1;

                            widget.a1 = aa;
                          });

                          //      widget.a1.addAll(Educationa.stages[index].grades);
                          print(widget.education1);
                          print(widget.grades1);
                          print(widget.subjects1);
                          print(widget.units1);
                          print(widget.lessons1);
                          /*
                          setState(() {
                            widget.a1.clear();
                            widget.a1.addAll(widget.grades1 == -1
                                ? Educationa.stages[index].grades
                                : widget.subjects1 == -1
                                    ? Educationa.stages[widget.grades1]
                                        .grades[index].subjects
                                    : widget.units1 == -1
                                        ? Educationa
                                            .stages[widget.grades1]
                                            .grades[widget.subjects1]
                                            .subjects[index]
                                            .units
                                        : Educationa
                                            .stages[widget.grades1]
                                            .grades[widget.subjects1]
                                            .subjects[widget.units1]
                                            .units[index]
                                            .lessons);

                            widget.item = widget.units1 == -1
                                ? ""
                                : Educationa
                                    .stages[widget.grades1]
                                    .grades[widget.subjects1]
                                    .subjects[widget.units1]
                                    .units[index]
                                    .name;
                            widget.name = "المراحل الدراسية";
                            widget.education1 = widget.education1;
                            widget.grades1 =
                                widget.grades1 == -1 ? index : widget.grades1;
                            widget.subjects1 = widget.grades1 != -1
                                ? widget.subjects1 == -1
                                    ? index
                                    : widget.subjects1
                                : -1;
                            widget.units1 = widget.subjects1 != -1
                                ? widget.units1 == -1
                                    ? index
                                    : widget.units1
                                : -1;
                            widget.lessons1 = widget.units1 != -1
                                ? widget.lessons1 == -1
                                    ? index
                                    : widget.lessons1
                                : -1;
                          });
*/
                          /*
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ListScreen(
                                a1:widget. grades1 == -1
                                    ? Educationa.stages[index].grades
                                    : subjects1 == -1
                                        ? Educationa.stages[grades1]
                                            .grades[index].subjects
                                        : units1 == -1
                                            ? Educationa
                                                .stages[grades1]
                                                .grades[subjects1]
                                                .subjects[index]
                                                .units
                                            : Educationa
                                                .stages[grades1]
                                                .grades[subjects1]
                                                .subjects[units1]
                                                .units[index]
                                                .lessons,
                                item: units1 == -1
                                    ? ""
                                    : Educationa
                                        .stages[grades1]
                                        .grades[subjects1]
                                        .subjects[units1]
                                        .units[index]
                                        .name,
                                name: "المراحل الدراسية",
                                education1: education1,
                                grades1: grades1 == -1 ? index : grades1,
                                subjects1: grades1 != -1
                                    ? subjects1 == -1
                                        ? index
                                        : subjects1
                                    : -1,
                                units1: subjects1 != -1
                                    ? units1 == -1
                                        ? index
                                        : units1
                                    : -1,
                                lessons1: units1 != -1
                                    ? lessons1 == -1
                                        ? index
                                        : lessons1
                                    : -1,
                              ),
                            ),
                          );

                           */

                          /*
                          grades1 == -1
                                    ? Educationa.stages[index].name.toString()
                                    : subjects1 == -1
                                        ? "${Educationa.stages[grades1].name} >> ${Educationa.stages[grades1].grades[index].name}"
                                        : units1 == -1
                                            ? "${Educationa.stages[grades1].name} >> ${Educationa.stages[grades1].grades[index].name} >> ${Educationa.stages[grades1].grades[subjects1].subjects[index].name} "
                                            : "${Educationa.stages[grades1].name} >> ${Educationa.stages[grades1].grades[index].name} >> ${Educationa.stages[grades1].grades[subjects1].subjects[index].name} ",
                                education1: education1,
                                grades1: grades1 == -1 ? index : grades1,
                                subjects1: grades1 != -1
                                    ? subjects1 == -1
                                        ? index
                                        : subjects1
                                    : -1,
                                units1: subjects1 != -1
                                    ? units1 == -1
                                        ? index
                                        : units1
                                    : -1,
                                lessons1: units1 != -1
                                    ? lessons1 == -1
                                        ? index
                                        : lessons1
                                    : -1,
                           */
                        } else {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const LisonOne(),
                              ));
                        }
                      },
                      child: Card(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        color: Colors.green.shade100,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              const Icon(
                                Icons.lock,
                                size: 40,
                              ),

                              Text(
                                '${widget.a1[index].name}',
                                maxLines: 2,
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              // إضافة مسافة لترك فراغ بين العناصر
                            ],
                          ),
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
