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
  final String description;
  final List<String> exercises;

  const Workout({
    required this.title,
    required this.durationMinutes,
    required this.level,
    required this.category,
    required this.description,
    required this.exercises,
  });

  // Список тренировок для примера
  static List<Workout> get sampleWorkouts => [
        const Workout(
          title: 'Утренняя зарядка',
          durationMinutes: 15,
          level: WorkoutLevel.beginner,
          category: WorkoutCategory.flexibility,
          description: 'Мягкая утренняя тренировка для пробуждения тела и зарядки энергией на весь день',
          exercises: ['Потягивания', 'Наклоны', 'Вращения руками', 'Приседания', 'Растяжка'],
        ),
        const Workout(
          title: 'HIIT тренировка',
          durationMinutes: 30,
          level: WorkoutLevel.advanced,
          category: WorkoutCategory.hiit,
          description: 'Интенсивная интервальная тренировка для максимального сжигания калорий',
          exercises: ['Бёрпи', 'Прыжки', 'Скалолаз', 'Выпады с прыжком', 'Планка с касанием плеч'],
        ),
        const Workout(
          title: 'Йога для гибкости',
          durationMinutes: 25,
          level: WorkoutLevel.beginner,
          category: WorkoutCategory.flexibility,
          description: 'Спокойная практика йоги для улучшения гибкости и снятия напряжения',
          exercises: ['Поза собаки', 'Поза кошки', 'Поза ребенка', 'Скручивания', 'Шавасана'],
        ),
        const Workout(
          title: 'Силовая на все тело',
          durationMinutes: 45,
          level: WorkoutLevel.intermediate,
          category: WorkoutCategory.strength,
          description: 'Комплексная силовая тренировка на все группы мышц',
          exercises: ['Приседания', 'Отжимания', 'Тяга', 'Жим', 'Выпады', 'Планка'],
        ),
        const Workout(
          title: 'Кардио сжигание',
          durationMinutes: 20,
          level: WorkoutLevel.intermediate,
          category: WorkoutCategory.cardio,
          description: 'Кардио тренировка для эффективного сжигания жира',
          exercises: ['Бег на месте', 'Прыжки со скакалкой', 'Jumping Jacks', 'Высокие колени', 'Бокс'],
        ),
        const Workout(
          title: 'Растяжка после тренировки',
          durationMinutes: 10,
          level: WorkoutLevel.beginner,
          category: WorkoutCategory.flexibility,
          description: 'Легкая растяжка для восстановления мышц после тренировки',
          exercises: ['Растяжка квадрицепсов', 'Растяжка бицепса бедра', 'Растяжка спины', 'Растяжка плеч'],
        ),
        const Workout(
          title: 'Пресс и кор',
          durationMinutes: 15,
          level: WorkoutLevel.intermediate,
          category: WorkoutCategory.strength,
          description: 'Целевая тренировка для укрепления мышц кора и пресса',
          exercises: ['Скручивания', 'Планка', 'Велосипед', 'Подъем ног', 'Русский твист'],
        ),
        const Workout(
          title: 'Бег интервалы',
          durationMinutes: 30,
          level: WorkoutLevel.advanced,
          category: WorkoutCategory.cardio,
          description: 'Интервальный бег для развития выносливости и скорости',
          exercises: ['Разминка', 'Спринт 1 мин', 'Ходьба 2 мин', 'Повторы', 'Заминка'],
        ),
        const Workout(
          title: 'Силовая верх тела',
          durationMinutes: 35,
          level: WorkoutLevel.intermediate,
          category: WorkoutCategory.strength,
          description: 'Силовая тренировка для развития мышц верхней части тела',
          exercises: ['Отжимания', 'Подтягивания', 'Жим гантелей', 'Разводка', 'Трицепс'],
        ),
        const Workout(
          title: 'Табата экстрим',
          durationMinutes: 20,
          level: WorkoutLevel.advanced,
          category: WorkoutCategory.hiit,
          description: 'Экстремальная табата-тренировка: 20 сек работы, 10 сек отдыха',
          exercises: ['Бёрпи', 'Приседания с прыжком', 'Отжимания', 'Скалолаз', 'Прыжки'],
        ),
      ];
}
