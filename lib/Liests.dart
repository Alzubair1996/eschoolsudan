class EducationalStage {
  final String name;
  final List<Grade> grades;

  EducationalStage({required this.name, required this.grades});
}

class Grade {
  final String name;
  final List<Subject> subjects;

  Grade({required this.name, required this.subjects});
}

class Subject {
  final String name;
  final List<Unit> units;

  Subject({required this.name, required this.units});
}

class Unit {
  final String name;
  final List<Lesson> lessons;

  Unit({required this.name, required this.lessons});
}

class Lesson {
  final String name;

  Lesson({required this.name});
}

class Educationa {
  static List<EducationalStage> stages = [
    EducationalStage(
      name: 'الاساس',
      grades: [
        Grade(
          name: 'الصف الأول',
          subjects: [
            Subject(
              name: "اللغه العربية",
              units: [
                Unit(
                  name: 'الوحدة الأولى التهيئة والاعداد',
                  lessons: [
                    Lesson(
                        name:
                            'الدرس الاول تعرف أسماء الأشياء \n في بيئة التلميذ\n (البيت - الحي - الشارع - المدرسة )'),
                    Lesson(name: 'الدرس الثاني نطق الحركات القصيرة'),
                    Lesson(name: 'الدرس الثالث نطق الحركات الطويلة'),
                    Lesson(name: 'الدرس الرابع تعرف الألوان'),
                    Lesson(name: 'الدرس الخامس إدراك العلاقات'),
                    Lesson(name: 'الدرس السادس تمييز الأطوال'),
                    Lesson(name: 'الدرس السابع تمييز الأطوال'),
                    Lesson(name: 'الدرس الثامن تعرف الأوضاع المكانية'),
                    Lesson(name: 'الدرس التاسع تعرف الإختلافات'),
                    Lesson(name: 'الدرس العاشر قلد الأصوات'),
                  ],
                ),
                // ... المزيد من الوحدات
              ],
            ),
            Subject(
              name: 'الرياضيات',
              units: [
                Unit(
                  name: 'الوحدة الأولى',
                  lessons: [
                    Lesson(name: 'درس 1'),
                    Lesson(name: 'درس 2'),
                  ],
                ),
                // ... المزيد من الوحدات
              ],
            ),
            // ... المزيد من المواد
          ],
        ),
        Grade(
          name: 'الصف الثاني',
          subjects: [
            Subject(
              name: 'الرياضيات',
              units: [
                Unit(
                  name: 'الوحدة الأولى',
                  lessons: [
                    Lesson(name: 'درس 1'),
                    Lesson(name: 'درس 2'),
                  ],
                ),
                // ... المزيد من الوحدات
              ],
            ),
            // ... المزيد من المواد
          ],
        ),
        Grade(
          name: 'الصف الثالث',
          subjects: [
            Subject(
              name: 'الرياضيات',
              units: [
                Unit(
                  name: 'الوحدة الأولى',
                  lessons: [
                    Lesson(name: 'درس 1'),
                    Lesson(name: 'درس 2'),
                  ],
                ),
                // ... المزيد من الوحدات
              ],
            ),
            // ... المزيد من المواد
          ],
        ),
        Grade(
          name: 'الصف الرابع',
          subjects: [
            Subject(
              name: 'الرياضيات',
              units: [
                Unit(
                  name: 'الوحدة الأولى',
                  lessons: [
                    Lesson(name: 'درس 1'),
                    Lesson(name: 'درس 2'),
                  ],
                ),
                // ... المزيد من الوحدات
              ],
            ),
            // ... المزيد من المواد
          ],
        ),
        Grade(
          name: 'الصف الخامس',
          subjects: [
            Subject(
              name: 'الرياضيات',
              units: [
                Unit(
                  name: 'الوحدة الأولى',
                  lessons: [
                    Lesson(name: 'درس 1'),
                    Lesson(name: 'درس 2'),
                  ],
                ),
                // ... المزيد من الوحدات
              ],
            ),
            Subject(
              name: 'اللغه العربية',
              units: [
                Unit(
                  name: 'الوحدة الأولى',
                  lessons: [
                    Lesson(name: 'درس 1'),
                    Lesson(name: 'درس 2'),
                  ],
                ),
                // ... المزيد من الوحدات
              ],
            ),
            // ... المزيد من المواد
          ],
        ),
        Grade(
          name: 'الصف السادس',
          subjects: [
            Subject(
              name: 'الرياضيات',
              units: [
                Unit(
                  name: 'الوحدة الأولى',
                  lessons: [
                    Lesson(name: 'درس 1'),
                    Lesson(name: 'درس 2'),
                  ],
                ),
                // ... المزيد من الوحدات
              ],
            ),
            // ... المزيد من المواد
          ],
        ),
        // ... المزيد من الصفوف
      ],
    ),
    EducationalStage(
      name: 'المتوسطة',
      grades: [
        Grade(
          name: 'الصف الأول',
          subjects: [
            Subject(
              name: 'الرياضيات',
              units: [
                Unit(
                  name: 'الوحدة الأولى',
                  lessons: [
                    Lesson(name: 'درس 1'),
                    Lesson(name: 'درس 2'),
                  ],
                ),
                // ... المزيد من الوحدات
              ],
            ),
            // ... المزيد من المواد
          ],
        ),
        Grade(
          name: 'الصف الثاني',
          subjects: [
            Subject(
              name: 'الرياضيات',
              units: [
                Unit(
                  name: 'الوحدة الأولى',
                  lessons: [
                    Lesson(name: 'درس 1'),
                    Lesson(name: 'درس 2'),
                  ],
                ),
                // ... المزيد من الوحدات
              ],
            ),
            // ... المزيد من المواد
          ],
        ),
        Grade(
          name: 'الصف الثالث',
          subjects: [
            Subject(
              name: 'الرياضيات',
              units: [
                Unit(
                  name: 'الوحدة الأولى',
                  lessons: [
                    Lesson(name: 'درس 1'),
                    Lesson(name: 'درس 2'),
                  ],
                ),
                // ... المزيد من الوحدات
              ],
            ),
            // ... المزيد من المواد
          ],
        ),

        // ... المزيد من الصفوف
      ],
    ),
    EducationalStage(
      name: 'الثانويه',
      grades: [
        Grade(
          name: 'الصف الأول',
          subjects: [
            Subject(
              name: 'الرياضيات',
              units: [
                Unit(
                  name: 'الوحدة الأولى',
                  lessons: [
                    Lesson(name: 'درس 1'),
                    Lesson(name: 'درس 2'),
                  ],
                ),
                // ... المزيد من الوحدات
              ],
            ),
            // ... المزيد من المواد
          ],
        ),
        Grade(
          name: 'الصف الثاني',
          subjects: [
            Subject(
              name: 'الرياضيات',
              units: [
                Unit(
                  name: 'الوحدة الأولى',
                  lessons: [
                    Lesson(name: 'درس 1'),
                    Lesson(name: 'درس 2'),
                  ],
                ),
                // ... المزيد من الوحدات
              ],
            ),
            // ... المزيد من المواد
          ],
        ),
        Grade(
          name: 'الصف الثالث',
          subjects: [
            Subject(
              name: 'الرياضيات',
              units: [
                Unit(
                  name: 'الوحدة الأولى',
                  lessons: [
                    Lesson(name: 'درس 1'),
                    Lesson(name: 'درس 2'),
                  ],
                ),
                // ... المزيد من الوحدات
              ],
            ),
            // ... المزيد من المواد
          ],
        ),

        // ... المزيد من الصفوف
      ],
    ),
    // ... المزيد من المراحل
  ];
}
