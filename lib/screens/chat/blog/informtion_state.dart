import 'package:crm/core/model/information_model.dart';
import 'package:flutter/foundation.dart';

abstract class InformationState {
  const InformationState();
}

class InformationInitial extends InformationState {
  const InformationInitial();
}

class InformationLoading extends InformationState {
  const InformationLoading();
}

class InformationCompledet extends InformationState {
  final List<Informations> response;

  const InformationCompledet(this.response);

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is InformationCompledet && listEquals(o.response, response);
  }

  @override
  int get hashCode => response.hashCode;
}

class InformationError extends InformationState {
  final String errorInformation;

  const InformationError(this.errorInformation);
}
