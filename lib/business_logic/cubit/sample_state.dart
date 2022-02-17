part of 'sample_cubit.dart';

@immutable
abstract class SampleState {
  const SampleState();
}

class SampleInitial extends SampleState {
  const SampleInitial();
}

class SampleLoading extends SampleState {
  const SampleLoading();
}

class SampleLoaded extends SampleState {
  final String textMsg;
  const SampleLoaded(this.textMsg);
}

class SampleError extends SampleState {}
