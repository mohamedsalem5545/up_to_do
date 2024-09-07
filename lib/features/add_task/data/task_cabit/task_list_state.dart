

class GetTakStates {}

class GetTaskSucessState extends GetTakStates {
  //final  List<TaskModel> shoppingCardList;

  //GetTaskSucessState({});
}

class GetTaskFiledState extends GetTakStates {
  final String errorMessage;

  GetTaskFiledState({required this.errorMessage});
}

class GetTaskloadingState extends GetTakStates {}

class GetTaskInitialState extends GetTakStates {}
//class GetTaskEmptyState extends GetTakStates {}

