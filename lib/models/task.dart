class Task {
  String title;
  bool isFinished;

  Task({this.title, this.isFinished = false});

  void toggleDone() {
    this.isFinished = !this.isFinished;
  }


}// End of class