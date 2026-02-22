class Reminder {
  final int id;
  final String title;
  final String description;
  final String reminderDate;
  final String reminderTime;

  Reminder ({
    required this.id,
    required this.title,
    required this.description,
    required this.reminderDate,
    required this.reminderTime,
  });

  factory Reminder.fromJson(Map<String, dynamic> json) {
    return Reminder(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      reminderDate: json['reminderDate'],
      reminderTime: json['reminderTime'],
    );
  }
}