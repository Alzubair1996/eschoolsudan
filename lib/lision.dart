import 'package:eschoolsudan/lision1.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'EmtyAppBar.dart';

class LisonOne extends StatefulWidget {
  const LisonOne({super.key});

  @override
  State<LisonOne> createState() => _Lison();
}

class _Lison extends State<LisonOne> {
  AudioPlayer aa1 = AudioPlayer();
  String texta = "تعرف على اسماء الاشياء من حولك";
  int index = 0;
  bool a1 = false;
  bool a2 = false;
  bool a3 = false;
  bool a4 = false;
  double? buttonWidth = 50.00;
  List<lision1> a = [
    lision1(
        id: 1,
        an1: "كرسي",
        an2: "سجادة الصلاة",
        an3: "كتاب",
        an4: "قلم",
        image1: 'assets/images/كرسي.png',
        image2: 'assets/images/سجاده.png',
        image3: 'assets/images/كتاب.png',
        image4: 'assets/images/قلم.png',
        audio1: 'assets/audio/كرسي.mp3',
        audio2: 'assets/audio/سجادةـالصلاة.mp3',
        audio3: 'assets/audio/كتاب.mp3',
        audio4: 'assets/audio/قلم.mp3'),
    lision1(
        id: 2,
        an1: "ثلاجة",
        an2: "زير",
        an3: "باب",
        an4: "جك",
        image1: 'assets/images/ثلاجه.png',
        image2: 'assets/images/زير.png',
        image3: 'assets/images/باب.png',
        image4: 'assets/images/جك.png',
        audio1: 'assets/audio/ثلاجة.mp3',
        audio2: 'assets/audio/زير.mp3',
        audio3: 'assets/audio/باب.mp3',
        audio4: 'assets/audio/جك.mp3'),
    lision1(
        id: 3,
        an1: "كلب",
        an2: "حمامه",
        an3: "ديك",
        an4: "دجاجه",
        image1: 'assets/images/كلب.png',
        image2: 'assets/images/حمامه.png',
        image3: 'assets/images/ديك.png',
        image4: 'assets/images/دجاجه.png',
        audio1: 'assets/audio/كلب.mp3',
        audio2: 'assets/audio/حمامه.mp3',
        audio3: 'assets/audio/ديك.mp3',
        audio4: 'assets/audio/دجاجه.mp3'),
    lision1(
        id: 4,
        an1: "ثور",
        an2: "خروف",
        an3: "بقره",
        an4: "معزه",
        image1: 'assets/images/ثور.png',
        image2: 'assets/images/خروف.png',
        image3: 'assets/images/بقره.png',
        image4: 'assets/images/معزه.png',
        audio1: 'assets/audio/ثور.mp3',
        audio2: 'assets/audio/خروف.mp3',
        audio3: 'assets/audio/بقره.mp3',
        audio4: 'assets/audio/معزه.mp3'),
    lision1(
        id: 5,
        an1: "قطار",
        an2: "طائره",
        an3: "سيارة",
        an4: "ركشه",
        image1: 'assets/images/قطار.png',
        image2: 'assets/images/طياره.png',
        image3: 'assets/images/سيارة.png',
        image4: 'assets/images/ركشه.png',
        audio1: 'assets/audio/قطار.mp3',
        audio2: 'assets/audio/طياره.mp3',
        audio3: 'assets/audio/سيارة.mp3',
        audio4: 'assets/audio/ركشه.mp3'),
    lision1(
        id: 6,
        an1: "جمل",
        an2: "حصان",
        an3: "حمار",
        an4: "دراجه هوائيه",
        image1: 'assets/images/جمل.png',
        image2: 'assets/images/حصان.png',
        image3: 'assets/images/حمار.png',
        image4: 'assets/images/دراجه.png',
        audio1: 'assets/audio/جمل.mp3',
        audio2: 'assets/audio/حصان.mp3',
        audio3: 'assets/audio/حمار.mp3',
        audio4: 'assets/audio/دراجة.mp3'),
    lision1(
        id: 7,
        an1: "سيارة اجرة",
        an2: "فرن",
        an3: "حافلة المدرسة",
        an4: "وصلة كهرباء",
        image1: 'assets/images/تاكسي.png',
        image2: 'assets/images/فرن.png',
        image3: 'assets/images/حفلة.png',
        image4: 'assets/images/وصلة.png',
        audio1: 'assets/audio/تاكسي.mp3',
        audio2: 'assets/audio/فرن.mp3',
        audio3: 'assets/audio/حفلة.mp3',
        audio4: 'assets/audio/وصلة.mp3'),
    lision1(
        id: 8,
        an1: "ملعقة",
        an2: "صحن",
        an3: "موقد الغاز",
        an4: "كاس",
        image1: 'assets/images/ملعقة.png',
        image2: 'assets/images/صحن.png',
        image3: 'assets/images/موقد.png',
        image4: 'assets/images/كاس.png',
        audio1: 'assets/audio/ملعقة.mp3',
        audio2: 'assets/audio/صحن.mp3',
        audio3: 'assets/audio/موقد.mp3',
        audio4: 'assets/audio/كاس.mp3'),
    lision1(
        id: 8,
        an1: "كانون",
        an2: "مكنسه",
        an3: "سلة القمامه",
        an4: "شباك",
        image1: 'assets/images/كانون.png',
        image2: 'assets/images/مكنسه.png',
        image3: 'assets/images/سلة.png',
        image4: 'assets/images/شباك.png',
        audio1: 'assets/audio/كانون.mp3',
        audio2: 'assets/audio/مكنسه.mp3',
        audio3: 'assets/audio/سلة.mp3',
        audio4: 'assets/audio/شباك.mp3'),
    lision1(
        id: 9,
        an1: "راديو",
        an2: "تلفاز",
        an3: "حاسوب",
        an4: "موبايل",
        image1: 'assets/images/راديو.png',
        image2: 'assets/images/تلفاز.png',
        image3: 'assets/images/حاسوب.png',
        image4: 'assets/images/موبايل.png',
        audio1: 'assets/audio/راديو.mp3',
        audio2: 'assets/audio/تلفاز.mp3',
        audio3: 'assets/audio/حاسوب.mp3',
        audio4: 'assets/audio/موبايل.mp3'),
    lision1(
        id: 10,
        an1: "طبشور",
        an2: "درج",
        an3: "حقيبه",
        an4: "سبورة",
        image1: 'assets/images/طبشور.png',
        image2: 'assets/images/درج.png',
        image3: 'assets/images/حقيبه.png',
        image4: 'assets/images/سبورة.png',
        audio1: 'assets/audio/طبشور.mp3',
        audio2: 'assets/audio/درج.mp3',
        audio3: 'assets/audio/حقيبه.mp3',
        audio4: 'assets/audio/سبورة.mp3'),
    lision1(
        id: 11,
        an1: "منقه",
        an2: "بيطخ",
        an3: "موز",
        an4: "تفاح",
        image1: 'assets/images/منقة.png',
        image2: 'assets/images/بيطخ.png',
        image3: 'assets/images/موز.png',
        image4: 'assets/images/تفاحه.png',
        audio1: 'assets/audio/منقه.mp3',
        audio2: 'assets/audio/بيطخ.mp3',
        audio3: 'assets/audio/موز.mp3',
        audio4: 'assets/audio/تفاحه.mp3'),
    lision1(
        id: 12,
        an1: "عنب",
        an2: "برتقال",
        an3: "ليمون",
        an4: "جوافة",
        image1: 'assets/images/عنب.png',
        image2: 'assets/images/برتقال.png',
        image3: 'assets/images/ليمون.png',
        image4: 'assets/images/جوافة.png',
        audio1: 'assets/audio/عنب.mp3',
        audio2: 'assets/audio/برتقال.mp3',
        audio3: 'assets/audio/ليمون.mp3',
        audio4: 'assets/audio/جوافة.mp3'),
  ];

  @override
  void initState() {
    super.initState();
    index == 0 ? playq() : null;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {
        buttonWidth = MediaQuery.of(context).size.width;
      });
    });
  }

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
                  flex: 0,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.close_rounded,
                        size: 50,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                      child: LinearProgressIndicator(
                        minHeight: 18,
                        value: (index + 1) / a.length,
                        valueColor:
                            const AlwaysStoppedAnimation<Color>(Colors.green),
                        backgroundColor: const Color(0xffD6D6D6),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: buttonWidth,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        texta,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  child: Column(
                    children: [
                      Expanded(
                        flex: 0,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () async {
                                  aa1.setAudioSource(
                                      AudioSource.asset(a[index].audio1));

                                  await aa1.play();

                                  setState(() {
                                    a1 = true;
                                    a2 = false;
                                    a3 = false;
                                    a4 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: a1
                                            ? Colors.greenAccent
                                            : Colors.white,
                                        border: Border.all(
                                          color: a1
                                              ? Colors.green
                                              : Colors.black54,
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10.0)),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: 230,
                                            height: 180,
                                            child: Image.asset(
                                              a[index].image1,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  a[index].an1,
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () async {
                                  aa1.setAudioSource(
                                      AudioSource.asset(a[index].audio2));

                                  await aa1.play();

                                  setState(() {
                                    a1 = false;
                                    a2 = true;
                                    a3 = false;
                                    a4 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: a2
                                            ? Colors.greenAccent
                                            : Colors.white,
                                        border: Border.all(
                                          color: a2
                                              ? Colors.green
                                              : Colors.black54,
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10.0)),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: 230,
                                            height: 180,
                                            child: Image.asset(
                                              a[index].image2,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  a[index].an2,
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 0,
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () async {
                                  aa1.setAudioSource(
                                      AudioSource.asset(a[index].audio3));

                                  await aa1.play();

                                  setState(() {
                                    a1 = false;
                                    a3 = true;
                                    a2 = false;
                                    a4 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: a3
                                            ? Colors.greenAccent
                                            : Colors.white,
                                        border: Border.all(
                                          color: a3
                                              ? Colors.green
                                              : Colors.black54,
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10.0)),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: 230,
                                            height: 180,
                                            child: Image.asset(
                                              a[index].image3,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  a[index].an3,
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: GestureDetector(
                                onTap: () async {
                                  aa1.setAudioSource(
                                      AudioSource.asset(a[index].audio4));

                                  await aa1.play();

                                  setState(() {
                                    a1 = false;
                                    a4 = true;
                                    a3 = false;
                                    a2 = false;
                                  });
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: a4
                                            ? Colors.greenAccent
                                            : Colors.white,
                                        border: Border.all(
                                          color: a4
                                              ? Colors.green
                                              : Colors.black54,
                                          width: 1.0,
                                        ),
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(10.0)),
                                      ),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            width: 230,
                                            height: 180,
                                            child: Image.asset(
                                              a[index].image4,
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Align(
                                                alignment: Alignment.center,
                                                child: Text(
                                                  a[index].an4,
                                                  style: const TextStyle(
                                                      fontSize: 16,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                )),
                                          ),
                                        ],
                                      )),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          setState(() {
            if (index + 1 < a.length) {
              index++;
              if (index == 2) {
                texta = "آسماء الحيوانات الاليفه والطيور التي تحيط بالتلميذ";
              } else if (index == 4) {
                texta = "آسماء وسائل النقل الحديثه والقديمه التي تحيط بالتلميذ";
              } else if (index == 7) {
                texta = "آسماء بعض ادوات المنزل";
              } else if (index == 9) {
                texta = "آسماء وسائل الاتصال المحيطه بالتلميذ";
              } else if (index == 10) {
                texta = "اسماء الاشياء في بيئة المدرسة";
              } else if (index == 11) {
                texta = "اسماء الفواكه";
              }
              setState(() {
                a1 = false;
                a4 = false;
                a3 = false;
                a2 = false;
              });
            } else {
              Navigator.pop(context);
            }
          });
        },
        child: SizedBox(
            width: buttonWidth,
            height: 50,
            child: const Padding(
              padding: EdgeInsets.fromLTRB(30, 0, 0, 0),
              child: Card(
                  color: Colors.green,
                  elevation: 7,
                  child: Padding(
                    padding: EdgeInsets.all(0.0),
                    child: Center(
                        child: Text(
                      "التالي",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    )),
                  )),
            )),
      ),
    );
  }

  playq() async {
    aa1.setAudioSource(AudioSource.asset('assets/audio/تعرف.mp3'));

    await aa1.play();
  }
}
