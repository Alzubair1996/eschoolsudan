import 'package:eschoolsudan/questions.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';

import 'EmtyAppBar.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  AudioPlayer aa1 = AudioPlayer();

  int index = 1;
  bool a1 = false;
  bool a2 = false;
  bool a3 = false;
  bool a4 = false;
  double? buttonWidth = 50.00;
  List<Questions> a = [
    Questions(
        id: 1,
        an1: "كرسي",
        an2: "سجادة الصلاة",
        an3: "كتاب",
        an4: "قلم",
        trueone: 2,
        image: 'assets/images/سجاده.png',
        audio1: 'assets/audio/كرسي.mp3',
        audio2: 'assets/audio/سجادةـالصلاة.mp3',
        audio3: 'assets/audio/كتاب.mp3',
        audio4: 'assets/audio/قلم.mp3'),
    Questions(
        id: 2,
        an1: "سيارة",
        an2: "زير",
        an3: "باب",
        an4: "قلم",
        trueone: 3,
        image: 'assets/images/باب.png',
        audio1: 'assets/audio/سيارة.mp3',
        audio2: 'assets/audio/زير.mp3',
        audio3: 'assets/audio/باب.mp3',
        audio4: 'assets/audio/قلم.mp3'),
    Questions(
        id: 3,
        an1: "كرسي",
        an2: "سيارة",
        an3: "دجاجه",
        an4: "ثلاجة",
        trueone: 2,
        image: 'assets/images/سيارة.png',
        audio1: 'assets/audio/كرسي.mp3',
        audio2: 'assets/audio/سيارة.mp3',
        audio3: 'assets/audio/دجاجه.mp3',
        audio4: 'assets/audio/ثلاجة.mp3'),
    Questions(
        id: 4,
        an1: "كتاب",
        an2: "ديك",
        an3: "دجاجه",
        an4: "حمامه",
        trueone: 3,
        image: 'assets/images/دجاجه.png',
        audio1: 'assets/audio/كتاب.mp3',
        audio2: 'assets/audio/ديك.mp3',
        audio3: 'assets/audio/دجاجه.mp3',
        audio4: 'assets/audio/حمامه.mp3'),
  ];

  @override
  void initState() {
    super.initState();
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
                    child: const Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "تعرُّف أسماء الأشياء",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 240,
                  height: 210,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black54,
                      width: 1.0,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  ),
                  child: Image.asset(
                    a[index].image,
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
                                        color:
                                            a1 ? Colors.green : Colors.black54,
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text(a[index].an1)),
                                    ),
                                  ),
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
                                        color:
                                            a2 ? Colors.green : Colors.black54,
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text(a[index].an2)),
                                    ),
                                  ),
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
                                        color:
                                            a3 ? Colors.green : Colors.black54,
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text(a[index].an3)),
                                    ),
                                  ),
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
                                        color:
                                            a4 ? Colors.green : Colors.black54,
                                        width: 1.0,
                                      ),
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10.0)),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Align(
                                          alignment: Alignment.center,
                                          child: Text(a[index].an4)),
                                    ),
                                  ),
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
        onTap: () {},
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
                      "تحقق",
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
}
