void main() {
  Map<String, int> studentsGrades = {
    'Pedro': 88,
    'Rj': 72,
    'Sheena': 93,
    'Paolo': 79
  };

  List<int> scores = studentsGrades.values.toList();

  print('Average of scores: ${calculateAvg(scores)}');

  gradeSummary(studentsGrades);
}

double calculateAvg(List<int> scores) {
  if (scores.isEmpty) return 0.0;
  return scores.reduce((a, b) => a + b) / scores.length;
}

void gradeSummary(Map<String, int> grades) {
  double total = 0;

  grades.forEach((name, grade) {
    print('$name: $grade');
    total += grade;
  });

  double avgGrade = grades.isNotEmpty ? total / grades.length : 0;

  print('Average grade: $avgGrade');

  if (avgGrade > 75) {
    print('The average grade is above the threshold (75).');
  } else {
    print('The average grade is below the threshold (75).');
  }
}
