import 'package:crm/core/model/information_repository.dart';
import 'package:crm/screens/chat/blog/informtion_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InformationCubit extends Cubit<InformationState> {
  final InformationRepository informationRepository;
  InformationCubit(this.informationRepository)
      : super(const InformationInitial()) {
    getData();
  }

  Future<void> getData() async {
    try {
      emit(const InformationLoading());
      final response = await informationRepository.getDataFromApi();
      emit(InformationCompledet(response));
    } catch (e) {
      emit(
        InformationError(e.toString()),
      );
    }
  }
}
