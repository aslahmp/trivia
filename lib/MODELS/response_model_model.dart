class Response {
  Response({
    required this.responseCode,
    required this.results,
  });
  late final int responseCode;
  late final List<Results> results;

  Response.fromJson(Map<String, dynamic> json) {
    responseCode = json['response_code'];
    results =
        List.from(json['results']).map((e) => Results.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['response_code'] = responseCode;
    _data['results'] = results.map((e) => e.toJson()).toList();
    return _data;
  }
}

class Results {
  Results({
    required this.category,
    required this.type,
    required this.difficulty,
    required this.question,
    required this.correctAnswer,
    required this.incorrectAnswers,
  });
  late final String category;
  late final String type;
  late final String difficulty;
  late final String question;
  late final String correctAnswer;
  late final List<String> incorrectAnswers;

  Results.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    type = json['type'];
    difficulty = json['difficulty'];
    question = json['question'];
    correctAnswer = json['correct_answer'];
    incorrectAnswers =
        List.castFrom<dynamic, String>(json['incorrect_answers']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['category'] = category;
    _data['type'] = type;
    _data['difficulty'] = difficulty;
    _data['question'] = question;
    _data['correct_answer'] = correctAnswer;
    _data['incorrect_answers'] = incorrectAnswers;
    return _data;
  }
}
