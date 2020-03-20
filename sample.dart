import 'dart:io';

class Tlm {
  bool learner;
  int time;
  var stacks;

  Tlm() {
    learner = true;
    time = 0;
    stacks = [];
  }

  void addStacks() {
    print('Enter the Stack: ');
    var stack = stdin.readLineSync();
    stacks.add(stack);
  }

  void setMentorOrLearner() {
    print('Are you a Mentor (yes/no): ');
    if (stdin.readLineSync() == "yes") {
      learner = false;
    } else {
      learner = true;
    }
  }

  void setAvailableTime() {
    if (learner == false) {
      print('Enter the time you can spend mentoring: ');
      time = stdin.readByteSync();
    }
  }

  void getMentor(var s, var t) {
    if (stacks.contains(s) && time >= t) {
      print('Mentor Assigned');
      time -= t;
    } else {
      print('Mentor not assigned');
    }
  }
}

void main() {
  var a = Tlm();
  a.addStacks();
  a.setMentorOrLearner();
  a.setAvailableTime();
  a.getMentor('Python', 5);
}
