enum Severity { low, medium, high }

class Complaint {
  final String title;
  final String summary;
  final Severity severity;
  bool isResolved;

  Complaint({
    required this.title,
    required this.summary,
    required this.severity,
    this.isResolved = false,
  });
}