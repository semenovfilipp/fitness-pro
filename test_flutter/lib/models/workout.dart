import 'package:flutter/material.dart';

enum WorkoutLevel {
  beginner('Начинающий'),
  intermediate('Средний'),
  advanced('Продвинутый');

  final String label;
  const WorkoutLevel(this.label);
}

enum WorkoutCategory {
  cardio('Кардио', Icons.directions_run),
  strength('Сила', Icons.fitness_center),
  flexibility('Растяжка', Icons.self_improvement),
  hiit('HIIT', Icons.local_fire_department);

  final String label;
  final IconData icon;
  const WorkoutCategory(this.label, this.icon);
}

class Workout {
  final String title;
  final int durationMinutes;
  final WorkoutLevel level;
  final WorkoutCategory category;

  const Workout({
    required this.title,
    required this.durationMinutes,
    required this.level,
    required this.category,
  });

  // Список тренировок для примера
  static List<Workout> get sampleWorkouts => [
        const Workout(
          title: 'Утренняя зарядка',
          durationMinutes: 15,
          level: WorkoutLevel.beginner,
          category: WorkoutCategory.flexibility,
        ),
        const Workout(
          title: 'HIIT тренировка',
          durationMinutes: 30,
          level: WorkoutLevel.advanced,
          category: WorkoutCategory.hiit,
        ),
        const Workout(
          title: 'Йога для гибкости',
          durationMinutes: 25,
          level: WorkoutLevel.beginner,
          category: WorkoutCategory.flexibility,
        ),
        const Workout(
          title: 'Силовая на все тело',
          durationMinutes: 45,
          level: WorkoutLevel.intermediate,
          category: WorkoutCategory.strength,
        ),
        const Workout(
          title: 'Кардио сжигание',
          durationMinutes: 20,
          level: WorkoutLevel.intermediate,
          category: WorkoutCategory.cardio,
        ),
        const Workout(
          title: 'Растяжка после тренировки',
          durationMinutes: 10,
          level: WorkoutLevel.beginner,
          category: WorkoutCategory.flexibility,
        ),
        const Workout(
          title: 'Пресс и кор',
          durationMinutes: 15,
          level: WorkoutLevel.intermediate,
          category: WorkoutCategory.strength,
        ),
        const Workout(
          title: 'Бег интервалы',
          durationMinutes: 30,
          level: WorkoutLevel.advanced,
          category: WorkoutCategory.cardio,
        ),
        const Workout(
          title: 'Силовая верх тела',
          durationMinutes: 35,
          level: WorkoutLevel.intermediate,
          category: WorkoutCategory.strength,
        ),
        const Workout(
          title: 'Табата экстрим',
          durationMinutes: 20,
          level: WorkoutLevel.advanced,
          category: WorkoutCategory.hiit,
        ),
      ];
}
